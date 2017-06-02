class RemovePostedByFromQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :posted_by, :string
  end
end
