class Score

  def initialize
    @total_score = 0
  end

  def total_score(frames)
    @total_frames = frames
    @total_frames.each_with_index { |frame, index| frame_score(frame, index) }
    @total_score
  end

  private

  def frame_score(frame, frame_index)
    @total_score += frame.rolls.sum
    extra_score(frame, frame_index)
  end

  def extra_score(frame, frame_index)
    if frame.type == 'spare'
      @total_score += @total_frames[frame_index + 1].rolls[0]
    elsif frame.type == 'strike'
      @total_score += @total_frames[frame_index + 1].rolls[0]
      @total_score += @total_frames[frame_index + 1].rolls[1]
    end
  end

end