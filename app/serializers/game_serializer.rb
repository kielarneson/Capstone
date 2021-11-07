class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :away_team, :home_team, :address, :stadium, :start_time, :tailgate_users

  has_many :tailgates
  has_many :tailgate_users
end
