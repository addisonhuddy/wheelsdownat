class Ride < ActiveRecord::Base
  attr_accessible :difficulty, :gmaps, :latitude, :leader, :length, :longitude, :ridename, :time, :date, :state, :city

  acts_as_gmappable

	def gmaps4rails_address
	  "#{latitude}, #{longitude}"
	end

	def gmaps4rails_infowindow
    "
    <strong>#{self.ridename}</strong>
    <ul>
	  	<li><p>Length: #{self.length}miles</p></li>
	    <li><p>Date: #{self.date}</p></li>
	    <li><p>Wheelsdown At: #{self.time}</p></li>
	    <li><p>Notes: #{self.difficulty}</p></li>
		</ul>
    "
  end

end
