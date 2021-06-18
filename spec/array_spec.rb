require 'array'


describe 'my_uniq' do 
    let(:array) { [1, 2, 1, 3, 3] }
    let(:uniqued_array) { my_uniq(array.dup) }
    let(:string) { "I am not an array" }

    #check to make sure the arguement being passed is an array
    it 'should raise error if arguement being passed is not an array' do
        expect { my_uniq(string) }.to raise_error(ArgumentError)
    end

    #removes duplicates  
    it 'removes duplicates' do
        array.each do |item|
            expect(uniqued_array.count(item)).to eq(1)
        end
    end

    #only contains el's from orginal array
    it 'only contains elements from the original array' do
        uniqued_array.each do |item|
            expect(array).to include(item) 
        end
    end

    #does not modify the original array
    it 'does not modify the original array' do 
        expect{my_uniq(array)}.to_not change{array}
    end
end

describe 'two_sum' do 
    let(:array) { [-5, -3, 1, 3] }
    let(:one_zero) { [3, 0, 4] }
    let(:two_zeros) { [3, 0, 4, 0] }

    it "finds a zero-sum pair" do 
        expect(two_sum(array)).to eq([1, 3])
    end

    it "is not confused by a single zero" do
        expect(two_sum(one_zero)).to eq([])
    end


    it "handles two zeros" do
        expect(two_sum(two_zeros)).to eq([])
    end
end


describe "transpose" do
    it "transposes a matrix" do
        matrix = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]

        expect(my_transpose(matrix)).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ])
    end
end


