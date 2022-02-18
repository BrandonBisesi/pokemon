class Ability < ApplicationRecord
  has_many :pokemon_ability
  has_many :pokemon, through: "pokemon_ability"
  validates :name, presence: true, uniqueness: true
  validates :effect, presence: true
end
