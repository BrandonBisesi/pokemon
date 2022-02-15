class Type < ApplicationRecord
    has_many :moves
    has_and_belongs_to_many :pokemons, join_table: "pokemon_types", foreign_key: "pokemon_id"
end
