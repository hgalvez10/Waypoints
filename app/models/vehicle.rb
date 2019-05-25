class Vehicle < ApplicationRecord

    self.primary_key = "vehicle_identifier"
    has_many :waypoints

    #validation que exista el parametro
    validates_presence_of :vehicle_identifier

    accepts_nested_attributes_for :waypoints, allow_destroy: true
   
    scope :lastGPS, -> {
        Vehicle.find_by_sql(
            "select t1.vehicle_id, t1.latitude, t1.longitude, t1.sent_at
            from waypoints t1
            inner join
            (
            select max(waypoints.sent_at) as maxdate, waypoints.vehicle_id
            from waypoints
            group by waypoints.vehicle_id
            ) t2
            on t1.vehicle_id = t2.vehicle_id
            and t1.sent_at = t2.maxdate"
        )
    }
end