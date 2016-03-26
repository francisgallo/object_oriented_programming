class Rover
attr_accessor :x_cor , :y_cor , :direction

  def initialize (x_cor , y_cor , direction)
      @x_cor = x_cor
      @y_cor = y_cor
      @direction = direction
  end

  def read_instruction(instruction)
    if instruction == "M"
      self.move
    elsif instruction == "L"
        self.l_facing
    else
        self.r_facing
    end
  end

  #def direction
   #puts "what is your starting direction"
  # @direction=gets.chomp
  # puts @direction
  #end

  def move

    if @direction == "N" then   @y_cor += 1
    elsif @direction == "S" then  @y_cor -=1
    elsif @direction == "W"  then @x_cor -= 1
    elsif @direction == "E" then @x_cor += 1
    else
      puts "nothing"
    end
  end

    def l_facing
      if  @direction =="N" then "W"
      elsif @direction =="W" then "S"
      elsif @direction == "S"then "E"
      elsif @direction == "E" then "N"
      else
    end
  end

    def r_facing
      if  @direction =="N" then "E"
      elsif @direction =="E" then "S"
      elsif @direction == "S"then "W"
      elsif @direction == "W" then "N"
      else
      puts "nothing"
    end
  end



end

#rover= Rover.new(1, 1,"N")
#rover.direction
