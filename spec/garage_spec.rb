require 'garage'
require 'bikecontainer_spec'


describe Garage do

	let(:garage) { Garage.new }
	let (:broken_bike) {double(:bike, :broken? => true )}


	it_should_behave_like 'BikeContainer'

	it "should dock a single bike" do
		garage.dock broken_bike
		expect(garage.inventory).to eq 1
	end

	it "should fix a broken bike" do
		garage.dock broken_bike
		expect(broken_bike).to receive(:fix!)
		garage.fix_array
	end

end