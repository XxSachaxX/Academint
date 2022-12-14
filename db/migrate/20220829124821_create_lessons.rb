class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.text :content
      t.references :chapter, null: false, foreign_key: true
      t.string :quizz_answers
      t.timestamps
    end
  end
end
