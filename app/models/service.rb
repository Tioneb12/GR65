class Service < ApplicationRecord
  belongs_to :flat_services
  belongs_to :flats
  has_many :flats, through: :flat_services

end
