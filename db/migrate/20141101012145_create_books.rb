class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.timestamps
      t.string :title
      t.integer :year
      t.integer :author_id
      t.integer :publisher_id
      t.integer :volume
      t.integer :number
      t.integer :edition
      t.string :month
    end
  end
end
