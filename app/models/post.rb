class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :post_tags
  has_many :tags, through: :post_tags
  validates_presence_of :picture

  def self.search(args)
    if args[:category_id]
      Post.where(['category_id = ?', args[:category_id]])
    elsif args[:tag_id]
      Post.where(['tag_id = ?', args[:tag_id]])
    else
      Post.where(['category_id = 1'])
    end
  end
end
