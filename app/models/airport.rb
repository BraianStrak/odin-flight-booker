class Airport < ApplicationRecord
    has_many :arriving_flights, foreign_key: "arrival_id", class_name: "Flight"
    has_many :departing_flights, foreign_key: "departure_id", class_name: "Flight" #remember the foreign key is in the flights table. This way rails can tell. 
end
