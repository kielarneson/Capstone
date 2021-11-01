class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :stadium, :start_time, :start_time_conversion, :tailgate_users

  has_many :tailgates
  has_many :tailgate_users
end
