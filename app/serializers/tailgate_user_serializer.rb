class TailgateUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tailgate_id, :user

  belongs_to :user
  belongs_to :tailgate
  belongs_to :game
end
