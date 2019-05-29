class PokemonsController < ApplicationController
  # before_action :show

  def index
    if params[:type] == nil || params[:type] == "Random"
      render json:(Pokemon.all.shuffle[0..8])
    else
      render json:(Pokemon.all.where(type_1: params[:type].downcase).or(Pokemon.all.where(type_2: params[:type].downcase)).shuffle[0..8])
    end
  end

  def show
    render json: Pokemon.find(params[:id])
  end

  private

  def pokemon_params
    params.require(@pokemon).permit(:id, :species, :ability, :nature_id, :type_1, :type_2, :sprite_image, :type)
  end
end
