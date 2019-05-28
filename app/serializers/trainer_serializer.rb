class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :username, :name
  has_many :pokemons, through: :trainer_pokemons
  has_many :trainer_pokemons
end
