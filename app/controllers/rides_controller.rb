class RidesController < ApplicationController
  def index
  	@rides_gmails = Ride.all.to_gmaps4rails
  	@rides = Ride.all
  	@new_ride = Ride.new
  end

  def create
    @ride = Ride.new(params[:ride])
    if @ride.save
    	flash[:notice] = "Saved the ride."
    	redirect_to rides_path
    else
    	flash[:error] = "Error saving the ride."
    	redirect_to rides_path
    end
  end

  def edit

  end
end
