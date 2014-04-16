class DockingStation

	CAPACITY = 20

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

end