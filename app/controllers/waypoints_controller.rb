class WaypointsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new
    end

    def create
        @vehicle = Vehicle.find params[:vehicle_identifier]
        @waypoint = Waypoint.new do |w|
            w.vehicle_id = params[:vehicle_identifier]
            w.latitude = params[:latitude]
            w.longitude = params[:longitude]
            w.sent_at = params[:sent_at]
        end
        if @waypoint.save
            render json: { status: 201, message: 'waypoint created successfully' }
        else
            render json: { status: 200, message: 'waypoint wasnt created successfully' }
        end
    rescue ActiveRecord::RecordNotFound => e
        
        @vehicle_new = Vehicle.new do |v|
            v.vehicle_identifier = params[:vehicle_identifier]
        end
        @vehicle_new.waypoints.build(vehicle_id: params[:vehicle_identifier], latitude: params[:latitude], longitude: params[:longitude], sent_at: params[:sent_at])
        
        if @vehicle_new.save!
            render json: { status: 201, message: 'vehicle and waypoint created successfully' }
        else
            render json: { status: 200, message: 'vehicle and waypoint wasnt created successfully' }
        end
    end

    private

    def findVehicle
        
    end
end
