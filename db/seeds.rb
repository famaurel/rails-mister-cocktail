# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Cocktail.destroy_all

# url = 'https://res.cloudinary.com/dwsnzdr34/image/upload/v1550237417/vqgk9ogqnmlprclnsp3n.jpg'
# cocktail = Cocktail.new(name: 'Cuba Libre')
# cocktail.remote_photo_url = url
# cocktail.save

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

json = open(url).read
drinks = JSON.parse(json).sort.to_h

drink_names = drinks["drinks"]

drink_names.each do |drink_name|
  Ingredient.create(name: drink_name["strIngredient1"])
end
