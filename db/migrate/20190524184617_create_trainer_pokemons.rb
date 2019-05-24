class CreateTrainerPokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_pokemons do |t|
      t.string :nickname
      t.integer :pokemon_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
