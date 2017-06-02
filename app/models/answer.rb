class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  def posted_by
    user.name
  end
  
end
