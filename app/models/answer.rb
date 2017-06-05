class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  has_many :responses

  validates :solution, presence: true

  def posted_by
    user.name
  end

end
