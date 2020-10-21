# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5, category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4, category: "indian" }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.new(attributes)
  p restaurant.valid?
  p restaurant.errors.messages
  restaurant.save!
  puts "Created #{restaurant.name}"
end
puts "Finished!"
