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
    describe '#initialize' do
        subject(:tower) {Towers.new}

        it 'sets 3 arrays, arr1 with placement disks' do
            expect(tower.arr1).to eq([5,4,3,2,1])
        end

        it 'sets arr2, arr3 to be empty array' do
            expect(tower.arr2).to be_empty
            expect(tower.arr3).to be_empty
        end
    end

    

end