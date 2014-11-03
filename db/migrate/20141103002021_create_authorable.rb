class CreateAuthorable < ActiveRecord::Migration
  def change
    create_table :authorables do |t|
      t.integer :author_id
      t.integer :authorable_id
      t.string :authorable_type
    end
  end
end
