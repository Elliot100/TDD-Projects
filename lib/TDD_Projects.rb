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

        (0..self.length-1).each do |i|
            (0..self.length-1).each do |j|
                arr[j][i] = self[i][j]
            end
        end
        arr
    end 
end

class Towers
    attr_reader :arr1, :arr2, :arr3

    def initialize
        @arr1 = [5,4,3,2,1]
        @arr2 = []
        @arr3 = []
    end

    def play
        display
        p "please select a pile to pick up and pile to move to. (e.q: 1,2) "
        user_input = gets.chomp
        pick,place = user_input.split(",")
        pick,place = pick.to_i, place.to_i
        
    end

    def display
        p @arr1 
        p @arr2 
        p @arr3 
    end
end