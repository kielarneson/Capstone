class TailgatesController < ApplicationController
  def index
    tailgates = Tailgate.all

    render json: tailgates
  end

  def create
    # game = Game.find_by(api_id: params[:api_id])
    # if game
    # else
    #   game = Game.new()
    #   game.save
    # end
    tailgate = Tailgate.new(
      user_id: current_user.id,
      game_id: params[:game_id],
      name: params[:name],
      description: params[:description],
      address: params[:address],
      start_time: params[:start_time],
      end_time: params[:end_time],
    )
    if tailgate.save
      render json: { message: "Tailgate created successfully", tailgate: tailgate }, status: :created
    else
      render json: { errors: tailgate.errors.full_messages }, status: :bad_request
    end
  end

  def show
    tailgate = Tailgate.find_by(id: params[:id])
    render json: tailgate
  end
end
