class LodgingsController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    lodgings = Lodging.where(user_id: current_user.id)

    render json: lodgings
  end

  def create
    lodging = Lodging.new(
      user_id: current_user.id,
      tailgate_id: params[:tailgate_id],
      lodging_type: params[:lodging_type],
      lodging_name: params[:lodging_name],
      address: params[:address],
    )
    if lodging.save
      render json: { message: "Lodging created successfully", lodging: lodging }, status: :created
    else
      render json: { errors: lodging.errors.full_messages }, status: :bad_request
    end
  end
end
