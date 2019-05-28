class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :species, :sprite_image, :type_1, :type_2, :ability, :nature
  has_many :trainers, through: :pokemon_trainers
end
