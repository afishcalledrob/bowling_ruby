require 'score'

describe Score do
  describe '#total_score' do
    xit 'returns total game score void spares and strikes' do
      basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
      frames = Array.new(10, basic_frame)

      expect(subject.total_score(frames)).to eq 30
    end

    xit 'returns total score of a game with a spare' do
      basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
      spare_frame = instance_double('spare_frame', :rolls => [9, 1], :type => 'spare')
      frames = [spare_frame]
      9.times { frames << basic_frame }
      allow(:frames).to receive(:total_score).and_return(false)

      expect(subject.total_score(frames)).to eq 38
    end
    
    xit 'returns a total score of 135 if game is all spares' do
        spare_frame = instance_double('spare_frame', :rolls => [9, 1], :type => 'spare')
        frames = []
        10.times { frames << spare_frame }
        expect(subject.total_score(frames)).to eq(181)
        
    end
    
    xit 'returns total score for a game with a strike' do
        basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
        strike_frame = instance_double('strike_frame', :rolls => [10], :type => 'strike')
        frames = [strike_frame]
        9.times {frames << basic_frame}
        expect(subject.total_score(frames)).to eq(40)
    end
    
    xit 'returns final score of 300 for perfect game' do
        strike_frame = instance_double('strike_frame', :rolls => [10], :type => 'strike')
        frames = []
        10.times {frames << strike_frame}
        expect(subject.total_score(frames)).to eq(300)
    end    
  end
end