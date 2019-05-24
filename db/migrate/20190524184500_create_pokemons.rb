class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :nature
      t.string :ability
      t.string :type_1
      t.string :type_2

      t.timestamps
    end
  end
end
