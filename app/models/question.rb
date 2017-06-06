class Question < ApplicationRecord
  has_many :answers
  belongs_to :user

  validates :title, presence: true
  validates :problem, presence: true

  def posted_by
    user.name
  end

  def answer_count
    # @answer = Answer.find_by(question_id: ??????)
    # @answer.questions.count
  end
end
