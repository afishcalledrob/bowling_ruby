class Score
   def initialize
       @frame = []
       @total_score = 0
   end 
   
   def total_score(frames)
     @all_frames = frames
     @all_frames.each_with_index {|frame, index| frame_score(frame, index)}
   end
   
   private
   
   def frame_score(frame, frame_index)
     @total_score += frame.roll.sum  
     extra_score(frame, frame_index)
   end
   
   def extra_score(frame, frame_index)
      if frame.type == 'spare'
          @total_score += @all_frames[frame_index + 1].rolls[0]
      end
   end
   
   
end