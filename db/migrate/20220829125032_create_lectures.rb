class CreateLectures < ActiveRecord::Migration[7.0]
  def change
    create_table :lectures do |t|
      t.integer :status, default: 0
      t.references :classroom, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.string :user_answers
      t.timestamps
    end
  end
end
