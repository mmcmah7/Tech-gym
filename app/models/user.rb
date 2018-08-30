class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  
  serialize :following, Array


  mount_uploader :avatar, AvatarUploader

      validates :username, presence: true, uniqueness: true
end