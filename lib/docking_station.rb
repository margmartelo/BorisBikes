
class DockingStation
  attr_reader :bicycles
  @@CAPACITY = 20
  
  def initialize
    @bicycles = []
  end

  def release_bike
    raise StandardError.new("No bike available") if @bicycles.empty?

    Bike.new
  end

  def dock(bike)
    raise StandardError.new("Station at capacity") if @bicycles.length >= @@CAPACITY

    @bicycles.push(bike)
  end

  def bike
  end
end
