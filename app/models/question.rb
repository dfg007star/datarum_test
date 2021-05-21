class Question < ApplicationRecord
  belongs_to :user

  has_many :answers, dependent: :destroy
  has_many :corrections, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
