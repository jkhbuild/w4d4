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

describe "#my_transpose" do 
    subject(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 9]] }
    it "should raise an ArgumentError if matrix is not an array" do
        expect { my_transpose("hello") }.to raise_error(ArgumentError)
    end

    it "raise error if matrix length is not equal the length of its first subarray" do
        bad_matrix = [[0, 1, 2], [1, 1, 1, 1], [2, 2, 2]]
        expect { my_transpose(bad_matrix)}.to raise_error("invalid matrix")
    end

    it "should transpose a matrix" do
        transposed = [[0, 3, 6], [1, 4, 7], [2, 5, 9]]
        expect(my_transpose(matrix)).to eq(transposed)
    end

end

describe "#stock_picker" do
    subject(:prices) { [150, 80, 100, 90, 150, 200, 60, 160] }
    # prices = "prices"
    it "should raise an error if it doesn't receive an Array" do
        expect {stock_picker("hello")}.to raise_error("invalid input")
    end

    it "should output an array of indices" do
        expect(stock_picker(prices).is_a? Array).to be true
    end

    it "should output only a pair of days" do
        expect(stock_picker(prices).length).to eq(2)
    end

    it "sould return the [buy, sell] days for max profit" do
        expect(stock_picker(prices)).to eq([1,5])
    end
    
end