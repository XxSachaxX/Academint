class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
