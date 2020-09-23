class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :options1
      t.string :options2
      t.string :options3
      t.string :options4
      t.string :answer
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
