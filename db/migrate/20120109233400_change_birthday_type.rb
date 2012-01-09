class ChangeBirthdayType < ActiveRecord::Migration
  def up
    change_table :people do |t|
      t.change :birthday, :date
    end
  end

  def down
    change_table :people do |t|
      t.change :birthday, :datetime
    end
  end
end
