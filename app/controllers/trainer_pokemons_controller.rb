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

  def update
    TrainerPokemon.find(params[:id]).update(trainer_pokemon_params)
    render json: {nickname: params[:nickname], id: params[:id]}
  end

  def destroy
    render json: TrainerPokemon.find(params[:id]).destroy
  end

  private

  def trainer_pokemon_params
    params.require(:trainer_pokemon).permit!
  end

end
