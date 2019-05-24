class Trainer < ApplicationRecord
  has_many :trainer_pokemons
  has_many :pokemons, through: :trainers
end
