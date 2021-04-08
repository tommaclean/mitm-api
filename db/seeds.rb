# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meetup.create({
    name: 'Do or Dive Bar',
    place_id: "ChIJAQCzoJZbwokReIATs2QEPWQ",
    place_coor: {lat: 40.6867791, lng: -73.9570104,},
    address: '1108 Bedford Ave, Brooklyn, NY 11216',
    status: 'OPERATIONAL',
    price_level: 3,
    user_id: 1
})