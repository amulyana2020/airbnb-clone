# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "faker"

user = User.create!({
    email: "aimulyana@yahoo.co.id",
    password: "123456"
})

6.times do |i|
property = Property.create!({
    name: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 10),
    address_1: Faker::Address.street_name,
    address_2: Faker::Address.city,
    country: Faker::Address.country,
    price: 500
})

property.images.attach(io: File.open("db/images/property_#{i+1}.png"), filename: property.name)
property.images.attach(io: File.open("db/images/property_#{i+7}.png"), filename: property.name)


((5..10).to_a.sample).times do
    Review.create!({
        content: Faker::Lorem.paragraph(sentence_count: 10),
        cleanliness_rating: (1..5).to_a.sample,
        accuracy_rating: (1..5).to_a.sample,
        checkin_rating: (1..5).to_a.sample,
        communication_rating: (1..5).to_a.sample,
        location_rating: (1..5).to_a.sample,
        value_rating: (1..5).to_a.sample,
        property: property,
        user: user
    })
end

end

