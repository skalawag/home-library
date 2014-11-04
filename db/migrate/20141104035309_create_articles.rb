class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.timestamps
      t.string :title
    end
  end
end
