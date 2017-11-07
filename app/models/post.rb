class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :post_tags
  has_many :tags, through: :post_tags
  validates_presence_of :picture

  def self.search(args)
    if args[:category_id]
      Post.where(['category_id = ?', args[:category_id]])
    elsif args[:tag_id]
<<<<<<< HEAD
      Post.joins(:post_tags).where(['post_tags.tag_id = ?', args[:tag_id]])
=======
      Post.joins(:post_tags).where(["post_tags.tag_id= ?", args[:tag_id]])
>>>>>>> d2fe8d7677afdff26933a58e9312992725df5c77
    elsif args[:user_id]
      Post.where(user_id: args[:user_id])
    else
      Post.where(['category_id = 1'])
    end
  end


end
