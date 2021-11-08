class Game < ApplicationRecord
  validates :api_id, uniqueness: true

  has_many :tailgates
  has_many :tailgate_users
  has_many :users, through: :tailgates

  def start_time_conversion
    if start_time.strftime("%I:%M%p")[0] == "0"
      start_time.strftime("%I:%M%p").slice(1..)
    else
      start_time.strftime("%I:%M%p")
    end
  end
end
