class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  has_many :corrections, dependent: :destroy
  validates :body, presence: true
end
