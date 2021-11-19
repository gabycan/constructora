# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@buildings = 
3.times do
    Building.create(name: Faker::Company.company, address: Faker::Address.address)
end
puts "💾 Buildings loaded!"

48.times do
    Office.create(number: Faker::Address.buildingNumber, building: @buildings.sample)
end
puts "💾 Offices loaded!"