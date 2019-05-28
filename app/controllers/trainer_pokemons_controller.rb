class TrainerPokemonsController < ApplicationController

  def index
    render json:(TrainerPokemon.all)
  end

  def show
    render json: TrainerPokemon.find(params[:id])
  end

  def create
    

  end

  private

  def trainer_pokemon_params
    params.require(@trainer_pokemon).permit(:trainer_id, :nickname, :pokemon_id, :id)
  end


end
