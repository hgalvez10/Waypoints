class VehiclesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    vehicle = Vehicle.where(vehicle_identifier: vehicle_params[:vehicle_identifier])
                      .first_or_initialize
    vehicle.waypoints.build(vehicle_params[:waypoints])
    if vehicle.save
      render json: { msg: 'vehicle has been created', status: :created}
    else
      render json: { msg: "error #{vehicle.errors}", status: :unprocessable_entity}
    end
  end

  def show
    @vehicles = Vehicle.lastGPS
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(
      :vehicle_identifier,
      waypoints: %i[latitude longitude sent_at _destroy])
  end
end
