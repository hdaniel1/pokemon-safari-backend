class Pokemon < ApplicationRecord
  has_many :trainer_pokemons
  has_many :trainers, through: :trainer_pokemons
  belongs_to :nature, optional: :true
end
