class AddNatureIdToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :nature_id, :integer
  end
end
