class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :post_tags
  has_many :tags, through: :post_tags
  validates_presence_of :picture

end
