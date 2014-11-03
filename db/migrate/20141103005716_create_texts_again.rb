class CreateTextsAgain < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :author_id
      t.integer :authorable_id
      t.string :authorable_type
    end
  end
end
