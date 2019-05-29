class TrainerPokemonSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :trainer_id, :pokemon_id, :nature
  belongs_to :trainer
  belongs_to :pokemon
end
