class TailgateSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :name, :description, :address, :start_time, :end_time, :start_time_conversion, :end_time_conversion

  belongs_to :game
  belongs_to :user
end
