json.extract! pokemon, :id, :name, :sprite, :hp, :attack, :defence, :special_attack, :special_defence, :generation_id, :weight, :evolution_chain, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
