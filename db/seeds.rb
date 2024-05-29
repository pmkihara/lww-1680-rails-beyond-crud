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
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', rating: 5, chef_name: 'Naved Nasir' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', rating: 4, chef_name: 'Gordon Ramsay' }
mequi = { name: 'Mequi 1000', address: 'Av. Paulista, 1000', rating: 4, chef_name: 'Ronald McDonald' }
cao_veio = { name: 'Cão Véio', address: 'R. Mourato Coelho', rating: 5, chef_name: 'Fogaça' }

[dishoom, pizza_east, mequi, cao_veio].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
