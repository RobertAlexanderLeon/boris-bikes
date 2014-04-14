class Person

	def initialize
		@bike = nil
	end

	def has_bike?
        @bike != nil 	
    end

	def rent_bike_from(station)
		@bike = station.release_bike
	end

	def fall_off(bike)
		@bike = bike.break!
	end

	def return_bike_to(station)
		@bike = station.accept_bike
		@bike = nil
	end





end