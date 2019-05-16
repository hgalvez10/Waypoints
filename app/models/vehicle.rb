class Vehicle < ApplicationRecord
    self.primary_key = "vehicle_identifier"
    has_many :waypoints
end