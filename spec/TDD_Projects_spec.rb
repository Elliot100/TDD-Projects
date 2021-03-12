require 'TDD_Projects'
require 'rspec'

describe Array do
    describe '#my_uniq' do
        let(:a) { [1,2,1,3,3] }
        it 'removes duplicates from an array' do
            expect(a.my_uniq).to eq([1,2,3])
        end
    end

    describe '#two_sums' do
        let(:a) { [-1, 0, 2, -2, 1] }
        it 'finds pairs pos that sums to 0' do
            expect(a.two_sums).to eq([[0, 4], [2, 3]])
        end
    end

    describe '#my_transpose' do
        let(:a) { [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
            ] }
        it 'convert rows and cols of square matrix' do
            expect(a.my_transpose).to eq([[0, 3, 6],
                                        [1, 4, 7],
                                        [2, 5, 8]])
        end
    end
end

describe Towers do
    subject(:tower) {Towers.new}
    describe '#initialize' do
        it 'sets 3 arrays, arr[0] with placement disks' do
            expect(tower.arr[0]).to eq([5,4,3,2,1])
        end

        it 'sets arr[1], arr[2] to be empty array' do
            expect(tower.arr[1]).to be_empty
            expect(tower.arr[2]).to be_empty
        end
    end

    describe '#move' do
        it 'move the disk from select pile to placement pile' do
            from_pile = 0
            to_pile = 1
            tower.move(from_pile, to_pile)
            expect(tower.arr[from_pile]).to eq([5,4,3,2])
            expect(tower.arr[to_pile]).to eq([1])
        end
    end

    describe '#valid_move' do
        it 'returns false if disk > last item at pile' do 
            tower.move(0, 2)
            expect(tower.valid_move?(5, 2)).to eq(false)
        end
    end

    describe '#won?' do
        let(:tower) { Towers.new }

        it 'returns true if last pile has all the disks in right order' do
            tower.arr[2] = [5,4,3,2,1]
            expect(tower.won?).to eq(true)
        end
    end


        
 end