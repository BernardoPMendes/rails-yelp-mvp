# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant = Restaurant.create(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    category: categories.sample
  )
  5.times do
    Review.create(
      content: Faker::Restaurant.description,
      rating: rand(0..5),
      restaurant_id: restaurant.id
    )
  end
end
