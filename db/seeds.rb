# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all

Airport.create(code: 'GER')
Airport.create(code: 'POL')
Airport.create(code: 'USA')
Airport.create(code: 'CAN')
Airport.create(code: 'FRA')
Airport.create(code: 'RUS')

Flight.create!(start: DateTime.new(2020, 10, 1, 10, 10), seconds_duration: 15000, arrival: Airport.first, departure: Airport.second) #THESE ARE THE THINGS IN THE FLIGHT MODEL YOU NUMPTY
Flight.create!(start: DateTime.new(2020, 10, 1, 10, 10), seconds_duration: 15000, arrival: Airport.second, departure: Airport.first)
#Flight.create(arrival_id: 2, departure_id: 5, start: DateTime.new(2020, 10, 1, 10, 10) , seconds_duration: 15000 )
#Flight.create(arrival_id: 6, departure_id: 3, start: DateTime.new(2020, 10, 1, 10, 10) , seconds_duration: 15000 )
#Flight.create(arrival_id: 1, departure_id: 3, start: DateTime.new(2020, 10, 1, 10, 10) , seconds_duration: 15000 )