# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(
  name: "White Russian",
  cocktail_image_url: "https://images.pexels.com/photos/45237/cocktail-glass-glass-strawberry-cream-45237.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
