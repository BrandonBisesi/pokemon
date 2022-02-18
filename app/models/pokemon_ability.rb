class PokemonAbility < ApplicationRecord
  belongs_to :pokemon
  belongs_to :ability
  validates :ability_id, :pokemon_id, presence: true
end
