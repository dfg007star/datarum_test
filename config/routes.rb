Rails.application.routes.draw do
  devise_for :users

  root 'main#index'

  resources :questions
  resources :answers
  resources :corrections
end
