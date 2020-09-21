class BookingsController < ApplicationController
    def new
        #pass it the parameters from submitting the last form
        @booking = Booking.new
        params.each do |key, value|
            puts "value below"
            puts key.to_s + ' : ' + value
        end
        @flight = Flight.find(params[:flightChoice])
    end

    def index

    end

    def show

    end

    def create

    end
end
