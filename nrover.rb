class Rover
  #attr:

  def direction
    puts "what is your starting direction"
    @direction=gets.chomp
    puts @direction
  end

  def l_facing
    if  @direction =="N" then "W"
    elsif @direction =="W" then "S"
    elsif @direction == "S"then "E"
    elsif @direction == "E" then "N"
    else
      puts "nothing"
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

rover= Rover.new
rover.direction
