require 'person'

describe Person do 

	let(:person) { Person.new }

	it "doesn't have a bike" do
		expect(person).not_to have_bike
	end

	it "can rent a bike from the docking station" do
		station = double :station
		expect(station).to receive(:release)
		person.rent_bike_from(station)
	end

	it "gets a bike when it rent_bike_from station" do
	    station = double :station, release: :bike
	    person.rent_bike_from(station)
	    expect(person).to have_bike
	end

	it "can fall off the bike" do
		bike = double :bike
		expect(bike).to receive(:break!)
		
		person = Person.new
		person.fall_off(bike)
	end

	it "can return a bike to the docking station" do
		station = double :station
		expect(station).to receive(:dock)
		person.return_bike_to(station)
	end

	it "no longer has a bike after return_bike_to station" do
	    station = double :station, dock: :bike
	    person.return_bike_to(station)
	    expect(person).not_to have_bike
	end



end