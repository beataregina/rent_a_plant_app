# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Booking.delete_all
Plant.delete_all
User.delete_all

puts "Creating 6 users..."
6.times do |i|
  user = User.create!(
    email: Faker::Internet.email,
    password: '123456',
    avatar_url: Faker::LoremFlickr.image(size: "200x200", search_terms: ['people'], match_all: true)
  )
  puts "#{i + 1}. #{user.email}"
end

puts "Creating 60 plants..."
60.times do |i|
  plant = Plant.create!(
    name: Faker::Name.first_name,
    age: rand(1..10),
    plant_type: Faker::Name.last_name,
    price: rand(20..200),
    city: 'Berlin',
    user_id: rand(1..6),
    photo_url: Faker::LoremFlickr.image(size: "200x200", search_terms: ['plants'], match_all: true)
  )
  puts "#{i + 1}. #{plant.name}"
end
puts "Finished!"
