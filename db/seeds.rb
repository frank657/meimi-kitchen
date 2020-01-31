# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  Ingredient.destroy_all
  Recipe.destroy_all

  10.times do
    Recipe.create!(name: Faker::Food.dish, description: Faker::Food.description, type_of: ['breakfast', 'lunch', 'dinner'].sample, cuisine: ['western', 'asian'].sample)
  end

  Recipe.all.each do |r|
    rand(5..15).times do
      Ingredient.create!(amount: rand(1..5).to_s, name: Faker::Food.spice, recipe: r)
    end
  end

  puts "#{Recipe.count} recipes, #{Ingredient.count} Ingredients"
end
