require 'boris_bikes'

describe Bike do
	it "is not broken" do
		expect(Bike.new).not_to be_broken
	end
	it "can break" do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end
	
end
