class Person

	def initialize
		@bike
	end

	def has_bike?
        !@bike.nil? 	
    end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

	def fall_off(bike)
		@bike = bike.break!
	end





end