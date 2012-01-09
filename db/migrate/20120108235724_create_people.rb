class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :linkedin
      t.string :facebook
      t.string :skype
      t.datetime :birthday
      t.text :notes

      t.timestamps
    end
  end
end
