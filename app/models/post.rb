class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category

  validates :message, presence: true
	
end