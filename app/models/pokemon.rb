class Pokemon < ApplicationRecord
  belongs_to :generation
  has_many :pokemon_type
  has_many :pokemon_ability
  has_many :pokemon_move
  has_many :type, through: "pokemon_type"
  has_many :ability, through: "pokemon_ability"
  has_many :move, through: "pokemon_move"
  validates :name, :number, uniqueness: true
  validates :sprite, presence: true

  def self.search(search)
    if search
      pokemon = Pokemon.find_by(name: search)
      if pokemon
        Pokemon.find(pokemon.id)
      else
        @pokemons = Pokemon.all
      end
    else
      @pokemons = Pokemon.all
    end
  end
end
