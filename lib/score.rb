class Score
    
 def initialize
    @total_score = 0
 end

  def calculation(frames)
    @total_frames = frames
    @total_frames.each_with_index { |frame, index| calculate_frame_score(frame, index) }
    @total_score
  end

  private

  def calculate_frame_score(frame, frame_index)
    @total_score += frame.rolls.sum
    calculate_special_scores(frame, frame_index)
  end

  def calculate_special_scores(frame, frame_index)
    if @total_frames[frame_index + 1]
      spare_score(frame, frame_index)
      strike_score(frame, frame_index)
    end
  end

  def spare_score(frame, frame_index)
    if frame.spare? || frame.strike?
      @total_score += @total_frames[frame_index + 1].rolls[0]
    end
  end

  def strike_score(frame, frame_index)
    if frame.strike?
      if @total_frames[frame_index + 1].rolls[1]
        @total_score += @total_frames[frame_index + 1].rolls[1]
      elsif @total_frames[frame_index + 2].rolls[0]
        @total_score += @total_frames[frame_index + 2].rolls[0]
      end
    end
  end
end