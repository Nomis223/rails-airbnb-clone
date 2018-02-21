class Guitar < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :image, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
