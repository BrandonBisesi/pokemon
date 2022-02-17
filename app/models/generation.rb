class Generation < ApplicationRecord
  has_many :pokemons
  has_many :moves
  validates :name, uniqueness: true
end
