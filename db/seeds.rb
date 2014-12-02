# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
areas = ['Eixample', 'Sants', 'Poble Nou', 'Gràcia', 'Raval', 'Gotic', 'Sarria', 'Barceloneta']

12.times do |index|
  user = User.create(
    name: "User #{index + 1}",
    email: "user#{index + 1}@gmail.com"
  )
  flat = Flat.create(
    num_rooms: rand(1..5),
    num_baths: rand(1..5),
    pet: rand(0..1),
    area: areas[rand(0..8)],
    user_id: user.id
  )
  Room.create flat_id: flat.id, price: rand(200..600)
end
