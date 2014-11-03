class AddAuthorableFieldsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :authorable_type, :string
    add_column :authors, :authorable_id, :integer
  end
end
