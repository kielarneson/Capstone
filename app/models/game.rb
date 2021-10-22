class Game < ApplicationRecord
  validates :api_id, uniqueness: true

  has_many :tailgates
  has_many :users, through: :tailgates
end
