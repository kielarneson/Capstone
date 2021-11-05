class TailgateUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tailgate_id, :game_id

  belongs_to :user
  belongs_to :tailgate
  belongs_to :game
  has_many :lodgings
  has_many :parkings
end
