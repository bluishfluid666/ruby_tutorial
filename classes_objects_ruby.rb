class Customer
  # Class Customer capable of displaying Customer's details, 
  # and tracking total number of customers registered in the system
  @@total_no_of_customers = 0
  def initialize(id, name="", addr)
    @id = id
    @name = name
    @addr = addr
    @@total_no_of_customers += 1;
  end
  def display_details
    puts "Customer ID: #@id"
    puts "Customer name: #@name"
    puts "Customer address: #@addr"
  end
  def total_no_of_customers
    puts "Total number of customers in the system: #@@total_no_of_customers"
  end
  def self.total_cust
    @@total_no_of_customers
  end
end
c1 = Customer.new(1, "John Homelander", "69 Great Ave")
c2 = Customer.new(2, "Annie January", "Iowa")
c3 = Customer.new(3, "Hugh Campbell", "NYC")
c4 = Customer.new(4, "Mother's Milk", "New Jersey")
c4.display_details
# c4.total_no_of_customers
puts Customer.total_cust

