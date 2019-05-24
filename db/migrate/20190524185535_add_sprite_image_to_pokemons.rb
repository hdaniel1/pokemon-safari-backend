class AddSpriteImageToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :sprite_image, :string
  end
end
