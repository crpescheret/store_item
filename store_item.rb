product1 = {:name => "magnifying glass", :price => 25, :color => "wood", :size => "small"}
product2 = {name: "night vision goggles", price: 130, color: "midnight", size: "medium"}
product3 = {name: "trenchcoat", price: 130, color: "tan", size: "medium"}
product4 = {:name => "lock pick kit", :price => 235, :color => "red", :size => "large"}

puts "#{product1[:name]} is a #{product1[:size]} #{product1[:color]} product and is $#{product1[:price]}"
puts "#{product2[:name]} is a #{product2[:size]} #{product1[:color]} product and is $#{product1[:price]}"

class Product
  attr_reader :name, :color

  def initialize(input_name, input_price, input_color, input_size)
    @name = input_name
    @price = input_price
    @size = input_size
    @color = input_color
  end

  def print_info
    puts "#{@name} is a #{@size} #{@color} product and is $#{@price}"
  end

  def wholesale_price
    @price = @price * 0.5
  end
end

product1 = Product.new("magnifying glass", 25, "wood", "small")
product2 = Product.new("trenchcoat", 130, "tan", "medium")
product1.print_info
product2.print_info
product1.wholesale_price
product1.print_info
puts product2.name