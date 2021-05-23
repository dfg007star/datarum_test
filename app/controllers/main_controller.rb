class MainController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.includes(:answers)
  end
end
