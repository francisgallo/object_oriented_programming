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
    instruction.map do |v|

      if v  == "M"
      self.move
    elsif v == "L"
        self.l_facing
    elsif v =="R"
        self.r_facing
      else
        puts "Wrong input "
      end
    end
  end

  def output
     puts " You are currently  at #{@x_cor}, #{@y_cor} facing  #{@direction}"
   end
end

   rover= Rover.new(1, 5,"N")
   puts "How would you like to move your Rover? L turn left, R to turn Right and M to move"
   instructions = gets.chomp.upcase
   array_instructions = instructions.split(//)
   rover.read_instruction(array_instructions)
   rover.output
