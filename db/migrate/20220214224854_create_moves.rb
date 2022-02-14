class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.references :type, null: false, foreign_key: true
      t.integer :accuracy
      t.integer :power
      t.integer :pp
      t.integer :priority
      t.string :ailment
      t.integer :ailment_chance
      t.string :effect

      t.timestamps
    end
  end
end
