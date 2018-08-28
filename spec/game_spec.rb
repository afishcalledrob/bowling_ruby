require 'game'

describe Game do
  describe '#initialize' do
    it 'initializes with an empty frame' do
      expect(subject.total_frames).to eq []
    end
    
    it 'initializes with an initial score of zero' do
      expect(subject.score).to eq 0
    end
  end  
end
