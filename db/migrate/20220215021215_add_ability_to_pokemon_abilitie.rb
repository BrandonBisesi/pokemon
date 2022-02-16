class AddAbilityToPokemonAbilitie < ActiveRecord::Migration[7.0]
  def change
    add_reference :pokemon_abilities, :ability, null: false, foreign_key: true
  end
end
