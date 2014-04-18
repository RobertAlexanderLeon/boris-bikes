require 'bikecontainer'

class PhantomContainer
	include BikeContainer

	def initialize
		@bikes = []
		@capacity = 20
	end
end

shared_examples "BikeContainer" do

	let (:broken_bike) {double(:bike, :broken? => true )}
	let (:working_bike) {double(:bike, :broken? => false )}
	let (:container) { PhantomContainer.new }

	def fill_container_dock
		20.times{container.dock(working_bike)}
	end

	def bike_array
		bike_array = []
		20.times { bike_array << Bike.new}
		return bike_array
	end

	it "has 20 bikes after docking 20 single bikes" do
		fill_container_dock
		expect(container.inventory).to eq 20
	end

	it "has 1 bike after docking 1 single bike" do
		container.dock(working_bike)
		expect(container.inventory).to eq 1
	end

	it "has bikes after docking array" do
		container.dock_array(bike_array)
		expect(container.inventory).to eq 20
	end

end