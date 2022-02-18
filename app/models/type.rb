class Type < ApplicationRecord
  has_many :move
  has_many :pokemon_type
  has_many :pokemon, through: "pokemon_type"
  validates :name, uniqueness: true
end
