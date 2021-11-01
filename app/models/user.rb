class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :user_name, :email, :password, :password_confirmation, presence: true
  validates :user_name, :email, uniqueness: true

  has_many :tailgate_users
  has_many :tailgates
  has_many :games, through: :tailgates
  has_many :tailgate_users, through: :games
  has_many :lodgings
  has_many :parkings
end
