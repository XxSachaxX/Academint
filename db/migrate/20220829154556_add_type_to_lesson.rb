class AddTypeToLesson < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :media, :string
  end
end
