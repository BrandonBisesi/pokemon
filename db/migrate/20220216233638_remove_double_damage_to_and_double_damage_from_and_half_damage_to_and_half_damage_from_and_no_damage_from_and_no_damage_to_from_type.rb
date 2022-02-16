class RemoveDoubleDamageToAndDoubleDamageFromAndHalfDamageToAndHalfDamageFromAndNoDamageFromAndNoDamageToFromType < ActiveRecord::Migration[7.0]
  def change
    remove_column :types, :double_damage_to, :string
    remove_column :types, :double_damage_from, :string
    remove_column :types, :half_damage_to, :string
    remove_column :types, :half_damage_from, :string
    remove_column :types, :no_damage_to, :string
    remove_column :types, :no_damage_from, :string
  end
end
