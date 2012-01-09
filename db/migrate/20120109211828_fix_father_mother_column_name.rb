class FixFatherMotherColumnName < ActiveRecord::Migration
  def up
    rename_column :people, :father, :father_id
    rename_column :people, :mother, :mother_id
  end

  def down
    rename_column :people, :father_id, :father
    rename_column :people, :mother_id, :mother
  end
end
