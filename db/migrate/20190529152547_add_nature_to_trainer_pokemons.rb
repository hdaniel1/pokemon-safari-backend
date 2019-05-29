class AddNatureToTrainerPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :trainer_pokemons, :nature, :string
  end
end
