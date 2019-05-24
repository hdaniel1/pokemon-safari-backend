# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
nosa = Trainer.find_or_create_by(name:"Nosa")
dan = Trainer.find_or_create_by(name: "Dan")

base_path = "https://pokeapi.co/api/v2/pokemon/"

i = 1
while i < 803 do
  target = JSON.load(open("#{base_path}#{i}"))

  # Pokemon.create(name: target["name"], type1: target["types"][0]["type"]["name"], type2: target["types"][1]["type"]["name"], image_url: target["sprites"]["front_default"])
  # i += 1
  if target["types"][1] != nil
    Pokemon.find_or_create_by(species: target["name"], type_1: target["types"][0]["type"]["name"], type_2: target["types"][1]["type"]["name"], ability: target["abilities"][0]["ability"]["name"], sprite_image: target["sprites"]["front_default"])
    i += 1
  else
    Pokemon.find_or_create_by(species: target["name"], type_1: target["types"][0]["type"]["name"], type_2: nil, ability: target["abilities"][0]["ability"]["name"], sprite_image: target["sprites"]["front_default"])
    i += 1
   end
end
