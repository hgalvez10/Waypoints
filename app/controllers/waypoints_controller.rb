class WaypointsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        @waypoints = Waypoint.all
    end
end
