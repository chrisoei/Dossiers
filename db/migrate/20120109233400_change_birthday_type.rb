class ChangeBirthdayType < ActiveRecord::Migration
  def up
    change_table :people do |t|
      t.change :birthday, :date
    end
    Person.reset_column_information 
  end

  def down
    change_table :people do |t|
      t.change :birthday, :datetime
    end
    Person.reset_column_information 
  end
end
