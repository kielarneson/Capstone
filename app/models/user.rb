class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :tailgate_users
  has_many :tailgates, through: :tailgate_users
  has_many :games, through: :tailgates
  has_many :lodgings
  has_many :parkings
end
