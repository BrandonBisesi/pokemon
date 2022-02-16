class Generation < ApplicationRecord
  has_many :pokemons
  validates :name, uniqueness: true
end
