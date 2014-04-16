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
		puts @bikes.count
		puts @bikes 
	end

	# def has_bike?
 #        !!@bikes
 #    end

	def pick_up_from(station)
		@bike = station.release
	end

	def deliver_to(station)
		station.dock @bike
		@bike = nil
	end
end