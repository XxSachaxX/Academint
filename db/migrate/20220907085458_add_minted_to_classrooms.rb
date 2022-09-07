class AddMintedToClassrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :classrooms, :minted, :boolean, default: false
  end
end
