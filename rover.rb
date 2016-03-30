class Rover
attr_accessor :x_cor , :y_cor , :direction
attr_reader :Plateau


def initialize (x_cor , y_cor , direction)
    @x_cor = x_cor
    @y_cor = y_cor
    @direction = direction
end

def read_instructions(instruction)

    instruction.map { |value|

        if value  == "M"
        self.move

      elsif value == "L"
        self.l_facing

      elsif value  =="R"
        self.r_facing
      else
        puts "Wrong input "
        end
      }
    end


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




def output
   puts " You are currently  at #{@x_cor}, #{@y_cor} facing  #{@direction}"
 end
end



class Plateau
  attr_accessor :height , :widith, :rovers

  def initialize (height , widith, rovers)
    @height=height
    @widith =widith
    @rovers = ()
  end

  #def move_rovers
  #  end
  #end

  def in_bounds (x,y)
    x=@x_cor
    y=@y_cor
     if x  >= 0 and x <=@widith || y >=0 and y <=@height
    then  self.move
     else
       puts "your rover is off the map"
     end
   end


end
# When Plateau x value hits >=10 or <=-1  and y value hits >=10 or <=-1


   area= Plateau.new(10,7,1)
   rover= Rover.new(1, 5,"N")
   puts "How would you like to move your Rover? L turn left, R to turn Right and M to move"

instruction = gets.chomp.upcase.split("")
 rover.read_instructions(instruction)
 rover.output
