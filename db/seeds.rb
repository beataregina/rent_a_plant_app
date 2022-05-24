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
  user = User.new(
    email: Faker::Internet.email,
    password: '123456'
  )
  user.save
  puts "#{i + 1}. #{user.email}"

  puts "Creating 60 plants..."
  10.times do |i|
    plant = Plant.new(
      name: Faker::Name.first_name,
      age: rand(1..10),
      plant_type: Faker::Name.last_name,
      price: rand(20..200),
      city: 'Berlin',
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
    )
    plant.user = user
    plant.save!
    puts "#{i + 1}. #{plant.name}"
  end
end

puts "Finished!"
