class Observation < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  
  has_many_attached :images
  #has_one_attached :avatar

  
end
