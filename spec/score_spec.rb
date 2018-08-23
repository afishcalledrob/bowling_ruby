require 'score'

describe Score do
    describe 'total_score' do
       it 'returns total score per game void spares and strikes' do
           basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
           all_frames = Array.new(10, basic_frame)
           expect(subject.total_score(all_frames)).to eq(30)
       end
       
       it 'returns total score per game with a spare' do
           basic_frame = instance_double('basic_frame', :rolls => [1, 2], :type => 'complete')
           spare_frame = instance_double('spare_frame', :rolls => [9, 1], :type => 'spare')
           all_frames = [spare_frame]
           9.times {all_frames << basic_frame}
           expect(subject.total_score(all_frames)).to eq(38)
       end
    end
end