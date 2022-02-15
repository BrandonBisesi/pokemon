# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "net/http"
require "json"

Ability.destroy_all

def fetch(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

abilities = fetch("https://pokeapi.co/api/v2/ability?limit=1000")

abilities["results"].each do |ability|
  ability_json = fetch(ability["url"])

  Ability.create(
    name:   ability_json["names"][7]["name"],
    effect: ability_json["effect_entries"][1]["effect"]
  )
end
