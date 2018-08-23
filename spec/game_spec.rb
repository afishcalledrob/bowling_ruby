require 'game'

describe Game do
  describe '#initialize' do
    it 'has an empty frame on initialize' do
      expect(subject.total_frames).to eq []
    end
  end  
end
