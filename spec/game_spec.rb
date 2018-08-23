require 'game'

describe Game do
    describe 'initialize' do
       it 'initially contains empty frame' do
          expect(subject.all_frames).to eq [] 
       end
    end
end