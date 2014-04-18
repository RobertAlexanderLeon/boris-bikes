module BikeContainer

	def dock(bike)
		if @bikes.count < @capacity
			@bikes << bike
		else
			raise "Maximum capacity reached!"
		end
		
	end

	def dock_array(bikes)
		bikes.each{|bike| dock(bike)}
	end

	def inventory
		@bikes.count
	end

	def release_working_bikes
		working_bikes = @bikes.reject {|bike| bike.broken?}
		@bikes -= working_bikes
		return working_bikes
	end

	def release_broken_bikes
		broken_bikes = @bikes.select {|bike| bike.broken?}
		@bikes -= broken_bikes
		return broken_bikes
	end

end