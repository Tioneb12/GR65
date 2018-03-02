class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  @flats = Flat.all.order(pk: :desc)
  @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @services = Service.all
    # @flat_services = FlatService.where(flat_id: params[:id]).map
    # @services = Service.where(service_id: @flat_services)
    @markers = [{lat: @flat.latitude, lng: @flat.longitude}]
  end
end
