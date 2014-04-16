class VanKenstein

	CAPACITY = 10

	def initialize
		@bikes = []
	end	

	def dock(bike)
		if @bikes.count < CAPACITY
			@bikes << bike
		else
			raise "Maximum capacity reached!"
		end
	end

	def release
		working_bikes = @bikes.reject {|bike| bike.broken?}
		@bikes.delete(working_bikes.first)
	end

	def stock
		@bikes.count
	end

	def has_bike?
        !!@bike
    end

	def rent_bike_from(station)
		@bike = station.release
	end

	def return_bike_to(station)
		station.dock @bike
		@bike = nil
	end
end