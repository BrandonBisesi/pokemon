class Move < ApplicationRecord
  belongs_to :type
  belongs_to :generation
  has_many :pokemon_move
  has_many :pokemon, through: "pokemon_move"
  validates :name, presence: true, uniqueness: true
  validates :power, presence: true
end
