class TailgateSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :name, :image_url, :description, :address, :start_time, :end_time, :start_time_conversion, :end_time_conversion, :parking_available, :private_bathroom, :alcohol_allowed, :food_provided, :family_friendly, :tv_available

  belongs_to :game
  belongs_to :user
  has_many :tailgate_users
end
