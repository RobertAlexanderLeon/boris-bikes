class Docking_Station

	def initialize
		@bikes = []
	end	

	def dock(bike)
		if @bikes.count < 20
			@bikes << bike
		else
			raise "Maximum capacity reached!"
		end
	end

	def release
		@bikes.pop
	end

	def stock
		@bikes.count
	end

	def capacity
		@bikes.count >= 20 ? "Maximum capacity reached!" : "Space Available" 
	end	

end