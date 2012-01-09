class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.integer :person_id
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
