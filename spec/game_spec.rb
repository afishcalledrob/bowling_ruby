require 'game'

describe Game do
  describe '#initialize' do
    it 'initializes with an empty frame' do
      expect(subject.total_frames).to eq []
    end
  end  
end
