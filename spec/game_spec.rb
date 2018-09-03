require 'game'

describe Game do
  describe '#initialize' do
    xit 'initializes with an empty frame' do
      expect(subject.total_frames).to eq []
    end
    
    xit 'initializes with an initial score of zero' do
      expect(subject.total_score).to eq 0
    end
  end 
  
  describe '#add_first_roll' do
    xit 'adds first roll to the frame' do
      expect(subject.add_first_roll(3)).to eq([3])
    end
  end
  
  describe '#add_second_roll' do
    xit 'add second roll to the frame' do
      expect(subject.add_second_roll(3)).to eq([3])
    end
  end
  
  describe '#add_frame' do
    xit 'add rolls to the frames array' do
      subject.add_first_roll(4)
      subject.add_second_roll(5)
      expect(subject.add_frame(subject.frame.rolls)).to eq []
    end
  end
end
