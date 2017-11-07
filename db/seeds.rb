# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting old records..."

Flat.destroy_all

puts "Please wait, loading flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Fantastic Loft in Angel',
  address: '135 Sheperdess Walk London N1 7RR',
  description: 'This fantastic 1930s Art Deco warehouse conversion has an updated kitchen and a very spacious living room.',
  price_per_night: 180,
  number_of_guests: 2
)

Flat.create!(
  name: 'Cozy 1 Bedroom in Clerkenwell',
  address: '95 Worcester Point, Central Street Clerkenwell EC1V 8BJ',
  description: 'Minutes away from lively Old Street and easy access to the City, this one bedroom apartment offers exactly what you need for great urban living.',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Mews House in Belgravia',
  address: '31 Kinnerton Street, Belgravia London SW1X 8EA',
  description: 'Luxurious mews house at the center of Belgravia, minutes away from high-end boutiques',
  price_per_night: 290,
  number_of_guests: 6
)

puts "Sucessfully loaded."
