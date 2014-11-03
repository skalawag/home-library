class RemoveAuthorables < ActiveRecord::Migration
  def change
    drop_table :authorables
  end
end
