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
