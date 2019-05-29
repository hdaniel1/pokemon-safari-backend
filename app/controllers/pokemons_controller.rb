class PokemonsController < ApplicationController
  # before_action :show

  def index
    render json:(Pokemon.all.shuffle[0..8])
  end

  def show
    render json: Pokemon.find(params[:id])
  end

  private
  
  def pokemon_params
    params.require(@pokemon).permit(:id, :species, :ability, :nature_id, :type_1, :type_2, :sprite_image)
  end
end
