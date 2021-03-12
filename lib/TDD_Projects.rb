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
    attr_reader :arr

    def initialize
        @arr = [[5,4,3,2,1],[],[]]
    end

    def play
        until won?
            display
            where_to_pick, where_to_place = get_input
            move(where_to_pick, where_to_place)
        end   
        p "YAY YOU WON!"   
    end

    def won?
        return true if @arr[2].length == 5
        false
    end

    def move(where_to_pick, where_to_place)
        disk = pick_disk(where_to_pick)
        if valid_move?(disk,where_to_place) 
            place_disk(where_to_place,disk)
        else
            invalid_move_message
        end
    end

    def valid_move?(disk,where_to_place)
        unless @arr[where_to_place].empty?
            return false if @arr[where_to_place].last < disk
        end
        true
    end

    protected

    def invalid_move_message
        p "Sorry, that's an invalid move."
    end

    def place_disk(to, disk)
        @arr[to].push(disk)
    end

    def pick_disk(pile)
        @arr[pile].pop
    end

    def get_input
        p "please select a pile to pick up and pile to move to. (e.q: 1,2) "
        user_input = gets.chomp
        pick,place = user_input.split(",")
        [pick.to_i, place.to_i]
    end

    def display
        p @arr[0] 
        p @arr[1]
        p @arr[2]
    end
end