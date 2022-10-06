class Array
    def my_uniq
        new_arr = []
        self.select do |nums|
            new_arr << nums if !new_arr.include?(nums)
        end
        new_arr
    end

    def two_sum
        new_arr = []
            self.each_with_index do |ele1, i1|
                self.each_with_index do |ele2, i2|
                    new_arr << [i1, i2] if i2 > i1 && ele1 + ele2 == 0
                end
            end
        new_arr
    end
end

def my_transpose(matrix)
    raise ArgumentError if !matrix.is_a?(Array)

    matrix.each do |array|
        raise "invalid matrix" if matrix.length != (array.length)
    end

    transposed = Array.new(matrix.length) {Array.new}
    matrix.each do |array|
        array.each_with_index do |ele, j|
            transposed[j] << ele
        end
    end
    transposed
        
end

def stock_picker(prices)
    raise "invalid input" if !prices.is_a? Array
    max_profit = 0
    profit_days = []

    prices.each_with_index do |buy_price, i1|
        prices.each_with_index do |sell_price, i2|
            profit = sell_price - buy_price
            if i2 > i1 && profit > max_profit
                max_profit = profit 
                profit_days = [i1, i2]
            end
        end
    end
    
    profit_days
end

class Towers
    attr_reader :board
    def initialize (board = [[3, 2, 1], [], []])
        @board = board
    end

    def get_move
        puts "grab a disc from 1-3"
        start = gets.chomp.to_i - 1 
        puts "place the disc from 1-3"
        stop = gets.chomp.to_i - 1
        [start, stop]
    end

    def valid_move?(move)
        return false if move.any? { |pos| !pos.between?(0,2)}
        return false if board[move.first].empty? 
        return true if board[move.last].empty? || board[move.last][-1] > board[move.first][-1] 
        false
    end

    def move(
    
end