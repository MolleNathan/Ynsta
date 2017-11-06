class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :picture
      t.integer :user_id
      t.integer :tag_id
      t.integer :categorie_id      
    end
  end
end
