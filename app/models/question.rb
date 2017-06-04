class Question < ApplicationRecord
  has_many :answers
  belongs_to :user

  # validates :title, presence: true
  # validates :problem, presence: true

  def posted_by
    user.name
  end
end
