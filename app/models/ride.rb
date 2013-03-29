class Ride < ActiveRecord::Base
  belongs_to :user
  attr_accessible :difficulty, :gmaps, :latitude, :leader, :length, :longitude, :ridename, :time, :date, :state, :city

  acts_as_gmappable

	def gmaps4rails_address
	  "#{latitude}, #{longitude}"
	end

end
