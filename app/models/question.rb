class Question < ApplicationRecord
  belongs_to :user

  has_many :answers, dependent: :destroy
  has_many :corrections, dependent: :destroy

  validates :title, presence: true, length: { maximum: 240}
  validates :body, presence: true

  default_scope -> { order(created_at: :desc) }
end
