require 'boris_bikes'

describe Bike do
	let(:bike) { Bike.new }
		it "is not broken" do
			expect(bike).not_to be_broken
		end
		it "can break" do
			bike.break!
			expect(bike).to be_broken
		end
		# it "can be fixed" do
		# 	bike.break!
		# 	bike.fix
end
