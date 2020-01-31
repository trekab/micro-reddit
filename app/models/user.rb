class User < ApplicationRecord
  has_many :posts
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence:true, length: { minimum: 3}, uniqueness: { case_sensitive: false }
  validates :email, presence:true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence:true

end
