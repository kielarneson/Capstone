class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name

  has_many :tailgates
end
