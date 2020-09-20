class Booking < ApplicationRecord
    #remember if you want to change it to a many to many relationship you can. if you need passenger.flights or flights.passengers. but i dont think you will. 
    #to access flight and passenger information we can by booking.flight and booking.passenger
    belongs_to :flight
    belongs_to :passenger
end
