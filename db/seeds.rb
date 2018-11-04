# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = [
  "Mojito",
  "Margharita",
  "Martini",
  "Old Fashioned",
  "Moscow Mules",
  "White Russian",
  "Apperol Spritz",
  "Tequila Sunrise",
  "Whiskey Sour",
  "Cosmopolitan",
  "Glühwein",
  "Sangria",
  "Sex on the Beach",
  "Sangria",
  "Uppercut",
  "Lime Club",
  "Kitchen Sink",
  "The Juliet",
  "Pitchfork",
  "Mai Tai",
  "Amoré",
  "Lost Lake",
  "Cry Baby",
  "Bombilla",
  "Bicicletta",
  "Negroni"
]

#------------

names.sort.each { |name| Cocktail.create(name: name) }

require 'open-uri'

ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
new_objects = []

ingredients["drinks"].each do |ingredient|
  new_objects << Ingredient.new(name: ingredient["strIngredient1"])
end

ingredients_db = new_objects.sort_by {|object| object[:name]}.each {|object| object.save }








