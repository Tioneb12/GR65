class Service < ApplicationRecord
  has_many :flat_services
  has_many :flats, through: :flat_services

end
