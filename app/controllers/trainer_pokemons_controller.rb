class TrainerPokemonsController < ApplicationController

  def index
    render json:TrainerPokemon.all
  end

  def show
    render json: TrainerPokemon.find(params[:id])
  end

  def create
    render json: TrainerPokemon.create(trainer_pokemon_params)
  end

  private

  def trainer_pokemon_params
    params.require(:trainer_pokemon).permit!
  end


end
