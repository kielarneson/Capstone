class TailgateUser < ApplicationRecord
  belongs_to :user
  belongs_to :tailgate
end
