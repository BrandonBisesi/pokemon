class PokemonType < ApplicationRecord
  belongs_to :pokemon
  belongs_to :type
  validates :type_id, :pokemon_id, presence: true
end
