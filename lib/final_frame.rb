class FinalFrame < Frame
  NUM_OF_ROLLS = 2
  
  def complete?
     return @rolls.length > NUM_OF_ROLLS if strike? || final_spare?
     @rolls.length == NUM_OF_ROLLS 
  end
  
  def final?
      true
  end
  
  private
  
  def final_spare?
    if @rolls.length >= NUM_OF_ROLLS
       rolls_sum = (@roll.inject(0, :+))
       rolls_sum >= 10
    end
  end
end