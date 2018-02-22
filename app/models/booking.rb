class Booking < ApplicationRecord
  belongs_to :guitar
  belongs_to :user
  before_validation :fixed_price


  def fixed_price
  price = self.guitar.price_per_day
  beg = Date.parse(self.starts_at)
  fin = Date.parse(self.ends_at)
  self.fixed_price = (fin - beg) * price
  end
end
