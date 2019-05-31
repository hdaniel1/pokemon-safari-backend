class TrainersController < ApplicationController

  def index
    render json:(Trainer.all)
  end

  def show
    # byebug
    render json: Trainer.find(params[:id])
  end

  def create
    @user = params["username"]
    @trainer = Trainer.find_by(username: @user)
    if(@trainer)
      redirect_to "http://localhost:3000/trainers/#{@trainer.id}"
    else
        render json: {:error => "Sorry, #{@user} is not a user"}
    end
  end

  private

  def trainer_params
    params.require(@trainer).permit(:id, :name, :username)
  end

end
