class AddResolutionToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :resolution, :string
  end
end
