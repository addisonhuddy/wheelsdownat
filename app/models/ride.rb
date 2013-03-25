class Ride < ActiveRecord::Base
  belongs_to :user
  attr_accessible :difficulty, :gmaps, :latitude, :leader, :length, :longitude, :ridename

  acts_as_gmappable

	def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
	  "#{self.street}, #{self.city}, #{self.country}" 
	end

end
