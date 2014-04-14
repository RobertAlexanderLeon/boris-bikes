require 'person'

describe Person do 

	let(:person) { Person.new }

	it "doesn't have a bike" do
		expect(person).not_to have_bike
	end

	it "can rent a bike from the docking station" do
		station = double :station
		expect(station).to receive(:release_bike)
		person.rent_bike_from(station)
	end

	it "gets a bike when it rent_bike_from station" do
	    station = double :station, release_bike: :bike
	    person.rent_bike_from(station)
	    expect(person).to have_bike
	end

	it "can fall off the bike" do
		bike = double :bike
		expect(bike).to receive(:break!)
		
		person = Person.new
		person.fall_off(bike)
	end



end