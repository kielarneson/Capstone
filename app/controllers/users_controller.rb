class UsersController < ApplicationController
  user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    user_name: params[:user_name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation],
  )
  if user.save
    render json: { message: "User created successfully" }, status: :created
  else
    render json: { errors: user.errors.full_messages }, status: :bad_request
  end
end