class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :sprite
      t.integer :hp
      t.integer :attack
      t.integer :defence
      t.integer :special_attack
      t.integer :special_defence
      t.references :generation, null: false, foreign_key: true
      t.integer :weight
      t.integer :evolution_chain

      t.timestamps
    end
  end
end
