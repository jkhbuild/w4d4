class Array
    def my_uniq
        new_arr = []
        self.select do |nums|
            new_arr << nums if !new_arr.include?(nums)
        end
        new_arr
    end

end