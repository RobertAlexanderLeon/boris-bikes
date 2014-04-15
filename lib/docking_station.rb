class Docking_Station

	def initialize
		@bikes = []
	end	

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def stock
		@bikes.count
	end

	def capacity
		@bikes.count >= 20 ? "Maximum capacity reached!" : "Space Available" 
	end	

end