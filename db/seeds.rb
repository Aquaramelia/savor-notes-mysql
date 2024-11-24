# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.create([
  { title: "Spaghetti Carbonara", cuisine: "Italian", cooking_time: 30, ingredients: [ "Spaghetti", "Eggs", "Pancetta", "Parmesan" ], instructions: "Cook spaghetti. Mix eggs and Parmesan. Fry pancetta. Combine all." },
  { title: "Tacos", cuisine: "Mexican", cooking_time: 20, ingredients: [ "Tortillas", "Ground Beef", "Cheese", "Lettuce" ], instructions: "Cook beef. Assemble tacos with toppings." }
])
