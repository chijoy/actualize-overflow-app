class AddAnswerIdToResponses < ActiveRecord::Migration[5.0]
  def change
    add_column :responses, :answer_id, :integer
  end
end
