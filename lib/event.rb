class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
  @food_trucks.select do |food_truck|
    food_truck.check_stock(item) >= 1
    end
  end

  def total_inventory
    @total_inventory = {}
    require "pry"; binding.pry
  end
end
