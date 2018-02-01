require "./binary_chop2.rb"

describe "returns -1" do
	let(:binary_chop) {BinaryChop.new}
	it "for empty array" do
		expect(binary_chop.chop(3, [])).to eq(-1)
	end

	it "for array that does not contain number" do
		expect(binary_chop.chop(3, [1])).to eq(-1)
	end

	it "for larger than one element array" do
		expect(binary_chop.chop(3, [1])).to eq(-1)
	end
end

describe "returns location of number" do
	let(:binary_chop) {BinaryChop.new}

	it "for array with one element" do
		expect(binary_chop.chop(3, [3])).to eq(0)
	end

	it "for array with more than one element" do
		expect(binary_chop.chop(1, [1,2,3])).to eq(0)
	end

	it "for array where num is not first" do
		expect(binary_chop.chop(3, [1,3,5])).to eq(1)
	end

	it "for array where num is last element" do
		expect(binary_chop.chop(5, [1,3,5])).to eq(2)
	end

	it "for four element array" do 
		expect(binary_chop.chop(5, [1,3,5,7])).to eq(2)
	end

	it "for four element array last element" do 
		expect(binary_chop.chop(7, [1,3,5,7])).to eq(3)
	end

end
