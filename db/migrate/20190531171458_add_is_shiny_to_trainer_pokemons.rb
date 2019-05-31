class AddIsShinyToTrainerPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :trainer_pokemons, :is_shiny, :boolean
  end
end
