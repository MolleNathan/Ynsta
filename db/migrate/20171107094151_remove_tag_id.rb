class RemoveTagId < ActiveRecord::Migration[5.1]
  def change

    remove_column :posts, :tag_id, :integer

  end
end
