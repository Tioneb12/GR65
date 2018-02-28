class Flat < ApplicationRecord
  belongs_to :user
  has_many :flat_services
  has_many :services, dependent: :destroy, through: :flat_services

  def full_address
    [address, zip_code, city].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

end
