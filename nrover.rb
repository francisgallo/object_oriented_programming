class Rover
attr_accessor :x_cor , :y_cor , :direction

  def initialize (x_cor , y_cor , direction)
      @x_cor = x_cor
      @y_cor = y_cor
      @direction = direction
  end


  #def direction
   #puts "what is your starting direction"
  # @direction=gets.chomp
  # puts @direction
  #end

  def move

    if @direction == "N"
      @y_cor += 1
    elsif @direction == "S"
       @y_cor -=1
    elsif @direction == "W"
      @x_cor -= 1
    elsif @direction == "E"
      @x_cor += 1
    else
      puts "nothing"
    end
  end

    def l_facing
      if  @direction =="N"
        @direction = "W"
      elsif @direction =="W" 
        @direction = "S"
      elsif @direction == "S"
        @direction ="E"
      elsif @direction == "E"
        @direction = "N"
      else
    end
  end

    def r_facing
      if  @direction =="N"
         @direction = "E"
      elsif @direction =="E"
        @direction ="S"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
         @direction = "N"
      else
      puts "nothing"
    end
  end

  def read_instruction(instruction)
    if instruction == "M"
      self.move
    elsif instruction == "L"
        self.l_facing
    elsif instruction =="R"
        self.r_facing
      else
        puts "Errors"
    end
  end


  def output
     puts "x_cor: #{@x_cor}\ny_cor: #{@y_cor}\ndirection: #{@direction}"
   end

end
