class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :person_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
