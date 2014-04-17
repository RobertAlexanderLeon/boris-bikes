require 'transit_van'

describe TransitVan do 

	let(:van) 		   { TransitVan.new       }
	let(:bike) 	       { double :bike     }
	let(:station)	   { DockingStation.new}
	#let(:broken_bike)  { Bike.new.break!}

	it "can load a bike" do
		station = double :station
		expect(station).to receive(:retire)
		van.pick_up_from_s(station)
	end

	it "has a bike after loading" do
		station = double :station, retire: :broken_bike
		van.pick_up_from_s(station)
		expect(van).to have_bike
	end


	it "gets a broken bike when it loads from docking station" do
	    station = double :station, retire: :broken_bike
	    van.pick_up_from_s(station)
	    expect(van.pick_up_from_s(station)).to eq :broken_bike
	end

	# it "can deliver a broken bike to the garage" do
	# 	station = double :garage
	# 	expect(garage).to receive(:dock)
	# 	van.deliver_bike_to(garage)
	# end

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