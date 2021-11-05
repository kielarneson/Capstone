class Tailgate < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :tailgate_users

  def start_time_conversion
    start_time.strftime("%I:%MPM").slice(1..)
  end

  def end_time_conversion
    end_time.strftime("%I:%MPM - %B %e, %Y").slice(1..)
  end
end
