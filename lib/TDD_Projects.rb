require 'byebug'

class Array
    def my_uniq
        new_arr=[]
        self.each {|ele| new_arr << ele unless new_arr.include?(ele) }
        new_arr
    end

    def two_sums
        pairs = []

        (0...self.length-1).each do |i|
            (i+1..self.length-1).each do |j|
                pairs << [i,j] if self[i] + self[j] == 0
            end
        end
        pairs
    end

    def my_transpose
        arr = Array.new(self.length) {Array.new(self.length)}
    end 
end