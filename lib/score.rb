class Score
    
    attr_reader :frame, :frame_index, :rolls, :total_score

  def initialize
    @total_score = 0
  end

  def total_score(frames)
    @total_frames = frames
    if perfect_game?
        @total_score += 300
    else   
      @total_frames.each_with_index { |frame, index| frame_score(frame, index) }
    end
    @total_score
  end

  private
  
  def perfect_game?
     @total_frames.max == @total_frames.min && @total_frames[0].rolls[0] == 10 
  end

  def frame_score(frame, frame_index)
    @total_score += frame.rolls.sum
    extra_score(frame, frame_index)
  end

  def extra_score(frame, frame_index)
     if @total_frames[frame_index + 1].nil?
         puts 'Game Finished!'
    elsif frame.type == 'spare'
      @total_score += @total_frames[frame_index + 1].rolls[0]
    elsif frame.type == 'strike'
      @total_score += @total_frames[frame_index + 1].rolls.sum
    end
  end

end