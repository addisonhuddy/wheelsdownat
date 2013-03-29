# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Ride.create(ridename: "First Ride", state: "CA", city: "Redwood City")
Ride.create(ridename: "Second Ride", state: "NV", city: "Las Vegas")
Ride.create(ridename: "Third Ride", state: "OR", city: "Portland")
