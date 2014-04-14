require 'person'

describe Person do 

	let(:person) { Person.new }

	it "doesn't have a back" do
		expect(person).not_to have_bike
	end

	it "can rent a bike from the docking station" do
	end
	

end