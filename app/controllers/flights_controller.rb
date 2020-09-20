class FlightsController < ApplicationController
    def index
        @airports = Airport.all
        @flights = Flight.all

        #The search parameters appear in the params hash. 
        #need to wrap this to catch an exception if it doesn't exist as atm it will throw one if it does not exist. 
        #this should probably be in the model as that is supposed to interface with the database. 
        if params.has_key?(:departure_id) && params.has_key?(:arrival_id) && params.has_key?(:start)
            from_airport_found = params[:departure_id].to_i
            to_airport_found = params[:arrival_id].to_i
            start_date_found = params[:start].to_date
            @resultFlights = Flight.where(departure_id: from_airport_found, arrival_id: to_airport_found, start: start_date_found)
        end
    end

   
end
