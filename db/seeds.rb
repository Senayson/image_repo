# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 

puts "Seeding ...."

puts "Creating Users"

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Name.first_name + "@gmail.com",
        password: "12345678"
    )
end

puts "Created users :)"

puts "Create image categories"

@categories = ['Portrait', 'Landscape']

puts "Creating images ...."

50.times do 
    Image.create(
        title: Faker::Artist.name,
        size: Faker::Number.number(digits: 10),
        category: @categories.sample,
        url: 'url'
    )
end

puts "Created images :)"