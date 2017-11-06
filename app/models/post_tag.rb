class PostTag < ApplicationRecord

  belongs_to :post, :tags

end
