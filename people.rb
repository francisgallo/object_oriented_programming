class Person
attr_accessor :name

 def initialize (name)
 @name=name
  end

  def greeting
    "Hi , my name is #{@name}"
  end

end

class Student < Person

  def learn
    puts " I get it!"
  end

end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object!"
  end

end

chris=Instructor.new("Chris")
cristina=Student.new("Cristina")

puts chris.greeting
puts cristina.greeting
puts chris.teach
puts cristina.learn
puts cristina.teach
puts chris.learn

# Calling teach for a student will not work as the Student class has not inherited the teach method
