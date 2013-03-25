class RidesController < ApplicationController
  def index
  	@json = User.all.to_gmaps4rails
  	@ride = Ride.new
  end

  def create
    @ride = Rides.new(params[:ride])
  end

  def edit

  end
end
