class Tailgate < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def start_time_conversion
    start_time.strftime("%I:%MPM")
  end

  def end_time_conversion
    end_time.strftime("%I:%MPM - %B %e, %Y")
  end
end
