class RidesController < ApplicationController
  respond_to :html, :xml, :js

  def index
  	@rides_gmails = Ride.all.to_gmaps4rails
  	@rides = Ride.all
  	@new_ride = Ride.new
  end

  def create
  before_filter :authenticate_user!
  @ride = Ride.new(params[:ride])
   if @ride.save
    @ride_id = @ride.id
   	redirect_to rides_path
   else
     flash[:error] = "Error saving the ride."
     redirect_to rides_path
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride_id = @ride.id
    @ride.destroy
    respond_with(@ride_id)
  end

end
