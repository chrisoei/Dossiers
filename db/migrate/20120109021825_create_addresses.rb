class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :person_id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps
    end
  end
end
