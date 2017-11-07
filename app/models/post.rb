class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :post_tags
  has_many :tags, through: :post_tags
  validates_presence_of :picture

  def self.search(args)
    if args[:category_id]
      Post.where(['category_id = ?', args[:category_id]])
    else
      Post.all
    end
  end
end
