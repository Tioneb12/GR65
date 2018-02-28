class Flat < ApplicationRecord
  belongs_to :user
  has_many :flat_services
  has_many :services, dependent: :destroy, through: :flat_services

  geocoded_by :full_address

  def full_address
    [address, zip_code, city].compact.join(', ')
  end

  after_validation :geocode, if: :address_changed?

end
