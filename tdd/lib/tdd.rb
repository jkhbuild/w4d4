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