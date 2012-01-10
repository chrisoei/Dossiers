class ChangeSupergroupField < ActiveRecord::Migration
  def up
    rename_column :organizations, :supergroup, :parent_id
  end

  def down
    rename_column :organizations, :parent_id, :supergroup
  end
end
