class Question < ApplicationRecord
  has_many :answers
  belongs_to :user

  def posted_by
    user.name
  end
end
