require 'transit_van'

describe TransitVan do 

	let(:van) 		   { TransitVan.new       }
	let(:station)	   { DockingStation.new}

	it "can load a bike" do
		station = double :station
		expect(station).to receive(:retire)
		van.station_pickup(station)
	end

	it "has a bike after loading" do
		station = double :station, retire: :broken_bike
		van.station_pickup(station)
		expect(van).to have_bike
	end


	it "gets a broken bike when it loads from docking station" do
	    station = double :station, retire: :broken_bike
	    van.station_pickup(station)
	    expect(van.station_pickup(station)).to eq :broken_bike
	end

	it "gets a working bike when it loads from the garage" do
	    garage = double :garage, release: :bike
	    van.garage_pickup(garage)
	    expect(van.garage_pickup(garage)).to eq :bike
	end

	it "can deliver a broken bike to the garage" do
		garage = double :garage
		expect(garage).to receive(:dock)
		van.deliver_to(garage)
	end

	it "can deliver a working bike to the docking station" do
		station = double :station
		expect(station).to receive(:dock)
		van.deliver_to(station)
	end

	# it "has no more broken bikes after delivering to the garage" do
	# end


	# it "can deliver repaired working bikes to the docking station" do
	#     station = double :station, dock: :bike
	#     van.deliver_bike_to(station)
	#     expect(van).not_to have_bike
	# end

	# it "has no more working bikes after delivering to the docking station" do
	# end






end