class Move < ApplicationRecord
  belongs_to :type
  belongs_to :generation
  has_and_belongs_to_many :pokemon, join_table: "pokemon_moves", foreign_key: "pokemon_id"
end
