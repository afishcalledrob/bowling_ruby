require_relative 'score'
require_relative 'frame'
require_relative 'final_frame'

class Game
  attr_reader :total_frames

  class GameOverError < StandardError; end

  def initialize(score = CalculateScore.new)
    @total_frames = [FinalFrame.new]
    9.times { @total_frames.unshift Frame.new }
    @score_calculator = score
  end

  def add_roll(pins)
    raise GameOverError if complete?
    current_frame.rolls << pins
  end

  def total_score
    @score_calculator.calculation(@total_frames)
  end

  private

  def complete?
    final_frame.complete?
  end

  def current_frame
    @total_frames.find(&:incomplete?)
  end

  def final_frame
    @total_frames.last
  end
end