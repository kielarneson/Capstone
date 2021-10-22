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
      parking_available: params[:parking_available],
      private_bathroom: params[:private_bathroom],
      alcohol_allowed: params[:alcohol_allowed],
      food_provided: params[:food_provided],
      family_friendly: params[:family_friendly],
      tv_available: params[:tv_available],
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

  def update
    tailgate = Tailgate.find_by(id: params[:id])

    tailgate.name = params[:name] || tailgate.name
    tailgate.description = params[:description] || tailgate.description
    tailgate.address = params[:address] || tailgate.address
    tailgate.start_time = params[:start_time] || tailgate.start_time
    tailgate.end_time = params[:end_time] || tailgate.end_time
    tailgate.parking_available = params[:parking_available] || tailgate.parking_available
    tailgate.private_bathroom = params[:private_bathroom] || tailgate.private_bathroom
    tailgate.alcohol_allowed = params[:alcohol_allowed] || tailgate.alcohol_allowed
    tailgate.food_provided = params[:food_provided] || tailgate.food_provided
    tailgate.family_friendly = params[:family_friendly] || tailgate.family_friendly
    tailgate.tv_available = params[:tv_available] || tailgate.tv_available

    if tailgate.save
      render json: { message: "Tailgate updated successfully", tailgate: tailgate }, status: :accepted
    else
      render json: { errors: tailgate.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    tailgate = Tailgate.find_by(id: params[:id])
    tailgate.destroy
    render json: { message: "Product successfully destroyed." }
  end
end