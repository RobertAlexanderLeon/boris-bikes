require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new }

	it 'stores bikes' do
	expect(station).to have_bikes
	end

	it 'can release bikes' do
	end

	it 'can accept bikes' do
	end

	it 'has a limited capacity' do
	end

	it 'knows if a bike is broken' do
	end

	it 'knows how many bikes are docked' do
	end

end
