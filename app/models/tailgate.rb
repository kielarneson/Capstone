class Tailgate < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :tailgate_users

  def start_time_conversion
    if start_time.strftime("%I:%MPM")[0] == "0"
      start_time.strftime("%I:%MPM").slice(1..)
    else
      start_time.strftime("%I:%MPM")
    end
  end

  def end_time_conversion
    if end_time.strftime("%I:%MPM - %A, %B %e, %Y")[0] == "0"
      end_time.strftime("%I:%MPM - %A, %B %e, %Y").slice(1..)
    else
      end_time.strftime("%I:%MPM - %A, %B %e, %Y")
    end
  end
end
