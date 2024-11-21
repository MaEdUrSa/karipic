class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :Observations
    has_many :Photos
    has_many :images, as: :imageable
    
    has_one_attached :avatar
    has_many_attached :images
    
    
    # accepts_nested_attributes_for :images
end
