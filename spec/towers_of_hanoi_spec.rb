require 'towers_of_hanoi'

describe 'TowersOfHanoi' do 
    let(:game) { TowersOfHanoi.new }
    
    describe '#initialize' do
        it 'start assign the stacks instance variable' do 
            expect(game.stacks).to eq([[3,2,1],[],[]])
        end
    end












end