class Photo < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  
  has_many :observations, dependent: :destroy

  #has_one_attached :avatar
end
