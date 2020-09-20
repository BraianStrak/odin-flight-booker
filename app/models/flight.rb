class Flight < ApplicationRecord
    belongs_to :arrival, class_name: "Airport"
    belongs_to :departure, class_name: "Airport"

    def flight_date_formatted
        start.strftime("%m-%d-%Y")
    end
  
    def self.get_start_dates
        start_dates = Flight.select(:start).distinct
    end
end
