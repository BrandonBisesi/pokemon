class AddNumberToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :number, :integer
  end
end
