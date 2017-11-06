class CreatePostTags < ActiveRecord::Migration[5.1]
  def change
    create_table :post_tags do |t|

      t.integer :post_id
      t.integer :tag_id
    end

    rename_column :posts, :categorie_id, :category_id

    remove_column :posts, :title
    remove_column :posts, :tag_id

  end
end
