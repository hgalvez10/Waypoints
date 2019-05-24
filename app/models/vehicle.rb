class Vehicle < ApplicationRecord

    self.primary_key = "vehicle_identifier"
    has_many :waypoints

    #validation que exista el parametro
    validates_presence_of :vehicle_identifier

    accepts_nested_attributes_for :waypoints, allow_destroy: true
   

=begin

    post ajax o lo que sea

    params

    strong params permitir parametros en el controller

    params.require(:object).permit(parmas...)

    tu vay a crear un vehiculo que tiene waypoints por ende
    tu post debe ser asi

    {
        vehicle: {
            vehicle_identifier: "uno-123",
            waypoints: [
                latitude: 123,
                longitude: 123,
                sent_at: "2013-12-34"
            ]
        } 
    }

=end

end