class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :stadium, :start_time, :start_time_conversion

  has_many :tailgates
end
