class LodgingsController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    parkings = current_user.parkings

    render json: lodgings
  end

  def create
    lodging = Lodging.new(
      tailgate_user_id: params[:tailgate_user_id],
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

  def update
    lodging = Lodging.find_by(id: params[:id])

    lodging.lodging_type = params[:lodging_type] || lodging.lodging_type
    lodging.lodging_name = params[:lodging_name] || lodging.lodging_name
    lodging.address = params[:address] || lodging.address

    if lodging.save
      render json: { message: "Lodging updated successfully", lodging: lodging }, status: :accepted
    else
      render json: { errors: lodging.errors.full_messages }, status: :bad_request
    end
  end
end
