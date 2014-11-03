class RemoveAuthorableColumnsFromAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :authorable_type
    remove_column :authors, :authorable_id
  end
end
