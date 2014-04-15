require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new }

	it 'can accept bikes' do
		bike = double, :bike
		station.dock(bike)
		expect(station.stock).to eq 1
	end


	it 'can release bikes' do
		bike = double, :bike
		station.release(bike)
		expect(station.stock).to eq 0
	end

	it 'knows how many bikes are docked' do
	end

	it 'has a limited capacity' do
	end


	it 'knows if a bike is broken' do
	end

end
