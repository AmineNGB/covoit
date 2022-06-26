class CarpoolRide < ApplicationRecord
  geocoded_by :departure_address
  after_validation :geocode, if: :will_save_change_to_departure_address?
end
