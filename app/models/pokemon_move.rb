class PokemonMove < ApplicationRecord
  belongs_to :pokemon
  belongs_to :move
  validates :move_id, :pokemon_id, presence: true
end
