class Flight < ApplicationRecord
    belongs_to :arrival, class_name: "Airport"
    belongs_to :departure, class_name: "Airport"

    def flight_date_formatted
        start.strftime("%m/%d/%Y")
    end
end
