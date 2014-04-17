class TransitVan

	CAPACITY = 10

	def initialize
		@bikes = []
	end	

	def has_bike?
        !!@bike
    end

	def dock(bike)
		if @bikes.count < CAPACITY
			@bikes << bike
		else
			raise "Maximum capacity reached!"
		end
	end

	def release_working_bikes
		working_bikes = @bikes.reject {|bike| bike.broken?}
		@bikes -= working_bikes
	end

	def release_broken_bikes
		broken_bikes = @bikes.select {|bike| bike.broken?}
		@bikes -= broken_bikes
	end

	#let´s make this awesome later on with each with index
	def inventory
		puts @bikes
		@bikes.count
	end

	def pick_up_from_s(station)		
		@bike = station.retire
	end

	def deliver_to(station)
		station.dock @bike
		@bike = nil
	end
end