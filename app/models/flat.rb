class Flat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :flat_services
  has_many :services, dependent: :destroy, through: :flat_services

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

  def full_address
    [address, zip_code, city].compact.join(', ')
  end

  def from_to(pdpt, dmnm, dmxm)
    # ville ou point de départ: pdpt = PK
    # distance minimum: dmnm = PK - x Km
    # distance maxi dmxm = Pk - Y Km
    # requete (flats situés entre X et Y kms ) = select flats where pk > dmnm & pk < dmxm
  end

  def calcul_km(start, stop)
    # ville ou point de départ: start = PK
    # ville ou point d'arrivée: stop = PK
    # return distance = start - stop
  end

end
