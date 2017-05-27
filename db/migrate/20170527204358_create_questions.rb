class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :problem
      t.string :posted_by

      t.timestamps
    end
  end
end
