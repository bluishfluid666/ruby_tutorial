class Mage
  attr_accessor :name, :spell
  def enchant(target)
    puts "#{@name} casts #{@spell} on #{target.name}"
  end
end
class Dog
  attr_reader :name, :age
  # Class methods
  def self.average_age
    puts "Dog's average age is 10 - 13 years."
  end
  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
  def age=(value)
    if value < 0
      raise "#{value} is not a valid age!"
    end
    @age = value
  end
  def move(destination)
    puts "#{@name} runs to #{destination}."
  end
  def talk
    puts "#{@name} says Barks!"
  end
  def report_age
    puts "#{@name} is #{@age} years-old."
  end
end
# You don't even have to create a Dog object to call class methods
Dog.average_age
dom = Dog.new
dom.name = "Dom"
dom.age = 5
dom.move("Gam xe to hide herself. How cute!")
dom.talk
dom.report_age
def sample (*test)
  puts "The number of parameters is #{test.length}"
  for i in 0...test.length
     puts "The parameters are #{test[i]}"
  end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"