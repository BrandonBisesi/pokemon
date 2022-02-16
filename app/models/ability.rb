class Ability < ApplicationRecord
  has_and_belongs_to_many :pokemon, join_table: "pokemon_abilities", foreign_key: "pokemon_id"
  validates :name, uniqueness: true
end
