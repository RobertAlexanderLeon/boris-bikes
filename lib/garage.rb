require_relative './bikecontainer'

class Garage

	include BikeContainer

	def initialize
		@bikes = []
		@capacity = 10
	end	
	
end
