require 'frame'

describe Frame do
    describe 'frame_type' do
       it 'returns strike if first roll per frame is 10' do 
         rolls = [10]
         expect(subject.frame_type(rolls)).to eq('strike')
       end
       
       it 'returns a spare if sum of both rolls is 10' do
           rolls = [4, 6]
           expect(subject.frame_type(rolls)).to eq('spare')
       end
       
       it 'returns normal if both rolls total at less than 10' do
           rolls = [2, 3]
           expect(subject.frame_type(rolls)).to eq('normal')
       end
    end
    
    describe 'add_roll' do
       it 'should add a new roll to the rolls array' do
          frame = Frame.new
          expect(frame.add_roll(5)).to eq [5]
       end
    end
end