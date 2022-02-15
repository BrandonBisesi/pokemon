class Pokemon < ApplicationRecord
  belongs_to :generation
  has_and_belongs_to_many :types, join_table: "pokemon_types", foreign_key: "type_id"
  has_and_belongs_to_many :abilities, join_table: "pokemon_types", foreign_key: "ability_id"
end
