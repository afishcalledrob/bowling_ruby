require_relative 'score'
require_relative 'frame'
class Game
  attr_reader :total_frames, :score, :frame

  def initialize(score = Score.new, frame = Frame.new)
    @frame = frame
    @total_frames = []
    @score = score
  end
  
  def add_first_roll(pins)
    @frame.add_roll(pins)
  end
  
  def add_second_roll(pins)
    @frame.add_roll(pins)
  end
  
  def add_frame(rolls)
    @total_frames << rolls
    @frame.clear_rolls
  end
end