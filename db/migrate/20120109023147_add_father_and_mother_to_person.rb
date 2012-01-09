class AddFatherAndMotherToPerson < ActiveRecord::Migration
  def change
    add_column :people, :father, :integer
    add_column :people, :mother, :integer
  end
end
