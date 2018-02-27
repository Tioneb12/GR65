class FlatService < ApplicationRecord
  belongs_to :flat
  belongs_to :service

  validates :service, uniqueness: {scope: :flat}
end
