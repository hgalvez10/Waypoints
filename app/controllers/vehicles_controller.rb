class VehiclesController < ApplicationController

    def index
        @vehicles = Vehicle.all
    end

    def new
    end

    def create
        #render plain: params[:vehicle].inspect
        @vehicle = Vehicle.new vehicle_params
        @vehicle.save

        redirect_to @vehicle
    end

    def show
        @vehicle = Vehicle.find params[:id]
    end

    private 

    def vehicle_params
        params.require(:vehicle).permit(:vehicle_identifier)
    end
end
