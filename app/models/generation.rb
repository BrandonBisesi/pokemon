class Generation < ApplicationRecord
  has_many :pokemon
  has_many :move
  validates :name, uniqueness: true
  validates :main_region, presence: true
end
