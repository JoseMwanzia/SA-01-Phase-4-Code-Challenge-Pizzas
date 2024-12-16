# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Seeding data 🌱 🌱 \n"

    puts "Creating Pizzas!"
10.times do
    Pizza.create(name: Faker::Food.dish, ingredients: Faker::Food.ingredient)
end

    puts "Creating Restaurants!"
10.times do
    Restaurant.create(name: Faker::Restaurant.name ,address: Faker::Address.street_address)
end

    puts "Creating RestaurantPizza!"
10.times do
    RestaurantPizza.create(price: rand(1..30), pizza_id: rand(1..10), restaurant_id: rand(1..5))
end

puts "✅✅✅ Done seeding data"