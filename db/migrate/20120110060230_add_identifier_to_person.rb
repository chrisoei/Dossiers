class AddIdentifierToPerson < ActiveRecord::Migration
  def change
    add_column :people, :identifier, :string
  end
end
