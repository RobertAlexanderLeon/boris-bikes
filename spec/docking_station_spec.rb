require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new }

	it 'can accept bikes' do
		bike = double, :bike
		station.dock(bike)
		expect(station.stock).to eq 1
	end


	it 'can release bikes' do
		station.release
		expect(station.stock).to eq 0
	end

	it 'knows how many bikes are docked' do
	end

	it 'it returns full for 20 bikes' do
		bike = double, :bike
		20.times{station.dock(bike)}
		expect(station.capacity).to eq "Maximum capacity reached!"
	end

	it 'it returns Space Available if there are less than 20 bikes' do
		bike = double, :bike
		19.times{station.dock(bike)}
		expect(station.capacity).to eq "Space Available"
	end

	it "it knows it's capacity is 20 bikes" do
		bike = double, :bike
		20.times{station.dock(bike)}
		expect{21.times{station.dock(bike)}}.to raise_error "Maximum capacity reached!"
	end

	# it "won't release a broken bike to a person" do
	# 	bike = double :bike, :broken?
	# end

	# it "will release a broken bike to a van" do
 #    end


	# it 'knows if a bike is broken' do
	# end

end
