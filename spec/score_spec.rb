require 'score'

describe Score do
  describe '#total_score' do
    it 'will return the total score of a game with no spares or strikes' do
      basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
      frames = Array.new(10, basic_frame)

      expect(subject.total_score(frames)).to eq 30
    end

    it 'will return the total score of a game with one spare' do
      basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
      spare_frame = instance_double('spare_frame', :rolls => [9, 1], :type => 'spare')
      frames = [spare_frame]
      9.times { frames << basic_frame }

      expect(subject.total_score(frames)).to eq 38
    end
  end
end