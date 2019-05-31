class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :species, :sprite_image, :type_1, :type_2, :ability, :nature, :shiny_sprite
  has_many :trainers, through: :pokemon_trainers
end
