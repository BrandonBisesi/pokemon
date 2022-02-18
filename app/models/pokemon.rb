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
end
