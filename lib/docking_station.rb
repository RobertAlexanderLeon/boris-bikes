class DockingStation

	CAPACITY = 20

	attr_reader :bikes

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
		rentals = @bikes.reject{|bike| bike.broken?}
		defective = @bikes.select{|bike| bike.broken?}
		rentals.pop
		@bikes = rentals + defective	
	end

	def retire
		rentals = @bikes.reject{|bike| bike.broken?}
		defective = @bikes.select{|bike| bike.broken?}
		defective.pop	
		@bikes = rentals + defective
	end


	def stock
		@bikes.count
	end

	def capacity
		@bikes.count >= CAPACITY ? "Maximum capacity reached!" : "Space Available" 
	end	

	def detect_broken_bikes
		@bikes.select{|bike| bike.broken?}
	end

end