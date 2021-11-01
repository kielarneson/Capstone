class ParkingsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def create
    parking = Parking.new(
      user_id: current_user.id,
      tailgate_id: params[:tailgate_id],
      parking_type: params[:parking_type],
      address: params[:address],
    )
    if parking.save
      render json: { message: "Parking created successfully", parking: parking }, status: :created
    else
      render json: { errors: parking.errors.full_messages }, status: :bad_request
    end
  end
end
