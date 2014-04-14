require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new }

	it 'has bikes' do
	expect(station).to have_bikes
	end

end
