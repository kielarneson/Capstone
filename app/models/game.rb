class Game < ApplicationRecord
  has_many :tailgates
  has_many :users, through: :tailgates
end
