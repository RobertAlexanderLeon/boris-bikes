require_relative './bikecontainer'

class TransitVan

	include BikeContainer


	def initialize
		@bikes = []
		@capacity = 10
	end	



end