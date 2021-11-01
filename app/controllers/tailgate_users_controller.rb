class TailgateUsersController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def create
    tailgate_user = TailgateUser.new(
      user_id: current_user.id,
      tailgate_id: params[:tailgate_id],
      game_id: params[:game_id],
    )
    if tailgate_user.save
      render json: { message: "Tailgate_user created successfully", tailgate_user: tailgate_user }, status: :created
    else
      render json: { errors: tailgate_user.errors.full_messages }, status: :bad_request
    end
  end
end
