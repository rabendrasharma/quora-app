class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :question
      t.integer :user_id
      t.text :question
      t.timestamps
    end
  end
end
