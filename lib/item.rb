class Item
  attr_reader :name, :price
  def initialize(data)
    @name = data[:name]
    @price = data[:price].delete("$").to_f
    # require "pry"; binding.pry
  end
end
