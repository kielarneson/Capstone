class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email

  has_many :tailgates
  has_many :tailgate_users
  # has_many :lodgings
  # has_many :parkings
end
