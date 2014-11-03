class DropTexts < ActiveRecord::Migration
  def change
    drop_table :texts
  end
end
