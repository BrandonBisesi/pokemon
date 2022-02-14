class Pokemon < ApplicationRecord
  belongs_to :generation
  has_and_belongs_to_many :types, join_table: "pokemon_type", foreign_key: "moves_id"
end
