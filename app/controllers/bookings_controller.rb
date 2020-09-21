class BookingsController < ApplicationController
    def new
        #pass it the parameters from submitting the last form
        @booking = Booking.new
        @flight = Flight.find(params[:flightChoice])
        @passenger = Passenger.new
    end

    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to root_path
        else
           
        end
    end

    def index

    end

    def show

    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, passenger: [:name, :email])
    end
end
