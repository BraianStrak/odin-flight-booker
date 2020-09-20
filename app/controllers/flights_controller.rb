class FlightsController < ApplicationController
    def index
        @airports = Airport.all
        @flights = Flight.all

        #The search parameters appear in the params hash. 
        #this should probably be in the model as that is supposed to interface with the database. 
        if params.has_key?(:departure_id) && params.has_key?(:arrival_id) && params.has_key?(:start)
            from_airport_found = params[:departure_id].to_i
            to_airport_found = params[:arrival_id].to_i
            start_date_found = params[:start]
            @resultFlights = Flight.where(departure_id: from_airport_found).where(arrival_id: to_airport_found).where(start: start_date_found)
        end
    end
end
