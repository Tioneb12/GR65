class Service < ApplicationRecord
  has_many :flats, through: :flat_services

end
