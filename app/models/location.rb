class Location < ApplicationRecord
 attr_accessor :raw_address
 geocoded_by :raw_address
 reverse_geocoded_by :latitude, :longitude
 after_validation :set_location, if: ->(obj){ obj.raw_address.present? and obj.raw_address != obj.address }

 after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
def distanse (point)
  distance_from(point)
end
private
  def set_location
    self.address = self.raw_address
    geocode
  end

end
