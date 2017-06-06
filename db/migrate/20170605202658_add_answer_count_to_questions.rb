class AddAnswerCountToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer_count, :integer
  end
end
