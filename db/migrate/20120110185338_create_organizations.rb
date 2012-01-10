class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :supergroup
      t.text :notes

      t.timestamps
    end
  end
end
