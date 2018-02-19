class Booking < ApplicationRecord
  belongs_to :guitar
  belongs_to :user
end
