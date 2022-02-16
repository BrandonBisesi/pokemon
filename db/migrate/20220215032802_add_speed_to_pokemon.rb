class AddSpeedToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :speed, :integer
  end
end
