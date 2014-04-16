require 'docking_station'

describe DockingStation do

	let (:station) { DockingStation.new }
	let (:broken_bike) {double(:bike, :broken? => true )}
	let (:working_bike) {double(:bike, :broken? => false )}
	let (:bike) {double(:bike)}


	def fill_station
		18.times{station.dock(Bike.new)}
		station.dock(working_bike)
		station.dock(broken_bike)
	end

	it 'can accept bikes' do
		station.dock(working_bike)
		expect(station.stock).to eq 1
	end

	it 'can release working bikes' do
		station.dock(working_bike)
		station.release
		expect(station.stock).to eq 0
	end

	it 'it returns full for 20 bikes' do
		fill_station
		expect(station.capacity).to eq "Maximum capacity reached!"
	end

	it 'it returns Space Available if there are less than 20 bikes' do
		fill_station
		station.release
		expect(station.capacity).to eq "Space Available"
	end

	it "it knows it's capacity is 20 bikes" do
		fill_station
		expect{station.dock(working_bike)}.to raise_error "Maximum capacity reached!"
	end

	it "recognises broken bikes" do
		station.dock broken_bike
		station.dock working_bike
		expect(station.detect_broken_bikes).to eq [broken_bike]
	end	 

 	it "will sort through the bikes to ensure a working bike is loaned instead of a broken bike" do
		station.dock working_bike
		station.dock broken_bike
		expect(station.release).not_to eq broken_bike
	end

	it 'knows how many bikes are docked' do
		fill_station
		expect(station.stock).to eq 20
	end

	# it 'will retire defective bikes' do
	# 	station.dock broken_bike
	# 	station.dock working_bike
 # 		expect(station.retire).not_to eq working_bike
	# end


end


		# puts "--" * 20
		# puts "the #{station.bikes.first} is broken? #{station.bikes.first.broken?}"
		# puts "the #{station.bikes.last} is broken? #{station.bikes.last.broken?}"
		# puts "--" * 20
