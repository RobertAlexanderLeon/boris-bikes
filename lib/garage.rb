require_relative './bikecontainer'

class Garage

	include BikeContainer

	def initialize
		@bikes = []
		@capacity = 10
	end	

	def fix_array
		@bikes.each {|bike| bike.fix! }
	end

end
