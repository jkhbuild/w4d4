require "tdd"
require "rspec"


describe "#my_uniq" do
    subject(:array)  { [1, 2, 3, 3] }
    it "checks that the method receives an array" do
        expect(array).to respond_to(:my_uniq)
        array.my_uniq
    end
    it "returns a new array" do
        expect(array.my_uniq).not_to be(array)
    end
    it "returns an array" do
        expect(array.my_uniq).to be_kind_of(Array)
    end
    it "should return an array of unique values" do
        expect(array.my_uniq).to eq([1,2,3])
    end
end

describe "#two_sum" do
    subject(:array)  { [1, 2, -3, 3] }
    it "checks that the method receives an array" do
        expect(array).to respond_to(:two_sum)
        array.two_sum
    end
    it "returns a new array" do
        expect(array.two_sum).not_to be(array)
    end
    it "returns indices of unique elements that sum to zero" do
        expect(array.two_sum).to eq([[2,3]])
    end

end