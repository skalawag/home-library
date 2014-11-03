class DropBookAuthors < ActiveRecord::Migration
  def change
    drop_table :book_authors
  end
end
