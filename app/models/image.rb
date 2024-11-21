class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  # has_many :images, as: :imageable
  
  # has_many_attached :images

end
