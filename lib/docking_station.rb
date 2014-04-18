require_relative './bikecontainer'

class DockingStation

	include BikeContainer

	def initialize
		@bikes = []
		@capacity = 20
	end	
end