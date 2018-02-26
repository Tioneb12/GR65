class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @flat_services = FlatService.where(flat_id: params[:id]).map
    @services = Service.where(service_id: @flat_services)

  end



end


