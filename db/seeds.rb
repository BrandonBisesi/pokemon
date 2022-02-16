# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "net/http"
require "json"

def fetch(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

# Ability.destroy_all
# Pokemon.destroy_all
# Generation.destroy_all

# abilities = fetch("https://pokeapi.co/api/v2/ability?limit=1000")

# abilities["results"].each do |ability|
#   ability_json = fetch(ability["url"])
#   effect_entry = ""

#   ability_json["effect_entries"].each do |effect|
#     effect_entry = effect["effect"] if effect["language"]["name"] == "en"
#   end

#   Ability.create(
#     name:   ability["name"].capitalize,
#     effect: effect_entry
#   ).valid?
# end

# generations = fetch("https://pokeapi.co/api/v2/generation/")

# generations["results"].each do |generation|
#   gen = fetch(generation["url"])
#   Generation.create(
#     name:        generation["name"].capitalize,
#     main_region: gen["main_region"]["name"].capitalize
#   ).valid?
# end

# pokemons = fetch("https://pokeapi.co/api/v2/pokemon?limit=898")

# pokemons["results"].each do |pokemon|
#   pokemon_json = fetch(pokemon["url"])
#   species_json = fetch(pokemon_json["species"]["url"])

#   Pokemon.create(
#     number:          pokemon_json["id"],
#     name:            pokemon_json["name"].capitalize,
#     sprite:          pokemon_json["sprites"]["front_default"],
#     hp:              pokemon_json["stats"][0]["base_stat"],
#     attack:          pokemon_json["stats"][1]["base_stat"],
#     defence:         pokemon_json["stats"][2]["base_stat"],
#     special_attack:  pokemon_json["stats"][3]["base_stat"],
#     special_defence: pokemon_json["stats"][4]["base_stat"],
#     speed:           pokemon_json["stats"][5]["base_stat"],
#     generation:      Generation.find_by(name: species_json["generation"]["name"].capitalize),
#     weight:          pokemon_json["weight"],
#     evolution_chain: fetch(species_json["evolution_chain"]["url"])["id"]
#   ).valid?

#   pokemon_json["types"].each do |type|
#     type_name = type["type"]["name"].capitalize

#     PokemonType.create(
#       pokemon: Pokemon.find_by(number: pokemon_json["id"]),
#       type:    Type.find_or_create_by(name: type_name)
#     ).valid?
#   end
# end
