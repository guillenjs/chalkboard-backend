class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.decimal :grade
      t.references :user, null: false, foreign_key: true
      t.integer :teacher_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end
