class NaturesController < ApplicationController

  def index
    render json:(Nature.all)
  end

  def show
    render json: Nature.find(params[:id])
  end

  private

  def nature_params
    params.require(@nature).permit(:id, :name)
  end

end
