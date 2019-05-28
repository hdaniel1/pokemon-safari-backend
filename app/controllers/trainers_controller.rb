class TrainersController < ApplicationController

  def index
    render json:(Trainer.all)
  end

  def show
    render json: Trainer.find(params[:id])
  end

  private

  def trainer_params
    params.require(@trainer).permit(:id, :name, :username)
  end

end
