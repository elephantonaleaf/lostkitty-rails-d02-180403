# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating 10 dogs"
  10.times do
    puts "creating a dog"
    Pet.create(
      name: Faker::Dog.name,
      description: Faker::Dog.sound,
      category: "dog",
      found: [true, false].sample,
      address: Faker::Address.city
      )
    puts "done creating a dog"
  end
