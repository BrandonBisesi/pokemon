class AddNameToGeneration < ActiveRecord::Migration[7.0]
  def change
    add_column :generations, :name, :string
  end
end
