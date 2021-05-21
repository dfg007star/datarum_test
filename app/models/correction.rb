class Correction < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :answer

  validates :body, presence: true
end
