class Frame
    
    attr_reader :rolls
    
    STRIKE = 10
    SPARE = 10
    NUM_OF_ROLLs = 2
    
    def initialize
      @rolls = []
    end
    
    def add_roll(number_of_pins)
       @rolls << number_of_pins 
    end
    
    def strike?
        @rolls[0] == STRIKE
    end
    
    def spare?
        !STRIKE && rolls.sum == SPARE
    end
    
    def complete?
        @rolls.length == NUM_OF_ROLLs || STRIKE
    end
    
    def incomplete?
        !complete?
    end
    
    def final?
        false
    end
end