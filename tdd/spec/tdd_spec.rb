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

describe Towers do 
    subject(:tower) { Towers.new }
    describe "#initialize" do
        it "should start with a valid board of 1 filled array, and 2 empty arrays" do
            expect(tower.board).to eq([[3, 2, 1], [], []])
        end
    end
    describe "#valid_move?" do 
        it "should return falseif invalid move" do
            invalid_move = [4, 4]
            expect(tower.valid_move?(invalid_move)).to eq(false)
        end
        it "should return false if invalid grab" do
            invalid_move = [2, 3]
            expect(tower.valid_move?(invalid_move)).to eq(false)
        end
        it "should return false if invalid place" do
            tower = Towers.new([[1], [2], [3]])
            invalid_move = [2, 1]
            expect(tower.valid_move?(invalid_move)).to eq(false)
        end
        it "should return true if valid move" do
            expect(tower.valid_move?([0, 1])).to eq(true)
        end
    end

    describe "#move" do
        it "should take a disc and place it in a new position" do
            tower.move([0,1])
            expect(tower.board).to eq([[3, 2], [1], []])
        end
    end

    describe "#game_over?" do
        it "should return true if game is over" do
            tower.board = tower.board.reverse
            expect(tower.game_over?).to eq(true)
        end
    end

    describe "#play" do
        it "move to respond to play" do
            tower.board = tower.board.reverse
            expect(tower.play).to eq("game over")
        end
    end

end