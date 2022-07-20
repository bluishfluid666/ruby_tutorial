# Global variable
$global_variable = 10
class Class1
  def print_global
    puts "Global variable in Class1 is #$global_variable"
  end
end
class Class2
  def print_global
    puts "Global variable in Class2 is #$global_variable"
  end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
# @Instance variable
# Uninit instance var <- nil, producing warning
# @@Class variable
# Class var has be to be init b4 they can be used in any method  
class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end
  def total_no_of_customers()
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
  end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details
cust2.display_details
cust1.total_no_of_customers
cust2.total_no_of_customers

# Local variable

# Local variables begin with a lowercase letter or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
# When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.
# Assignment to uninitialized local variables also serves as variable declaration. The variables start to exist until the end of the current scope is reached. The lifetime of local variables is determined when Ruby parses the program.
# In the above example, local variables are id, name and addr.

# Constant
class Example
  VAR1 = 100
  VAR2 = 200
  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

# Create Objects
object = Example.new()
object.show