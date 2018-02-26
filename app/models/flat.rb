class Flat < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy, through: :flat_services

  def services(flat)
    sales.joins(:flat_service, :service).where('flat.flat_service = ?', flat.id)
  end
end


