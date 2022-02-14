class CreateGenerations < ActiveRecord::Migration[7.0]
  def change
    create_table :generations do |t|
      t.string :main_region

      t.timestamps
    end
  end
end
