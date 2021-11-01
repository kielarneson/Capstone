class Game < ApplicationRecord
  validates :api_id, uniqueness: true

  has_many :tailgates
  has_many :tailgate_users
  has_many :users, through: :tailgates

  def start_time_conversion
    start_time.strftime("%I:%MPM - %B %e, %Y")
  end
end
