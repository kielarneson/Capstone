class TailgatesController < ApplicationController
  def index
    tailgates = Tailgate.all

    render json: tailgates
  end
end
