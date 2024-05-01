# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'indian', phone_number: '02082442823' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian',
               phone_number: '02082442823' }
smoking_goat = { name: 'Smoking Goat', address: '64 Shoreditch High St, London E1 6JJ', category: 'thai',
                 phone_number: '02082442823' }
taste_of_raj = { name: 'taste of raj', address: '9 Royal Parade, Blackheath, London SE3 0TL',
                 phone_number: '02082442823', category: 'indian' }
[dishoom, pizza_east, smoking_goat, taste_of_raj].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
