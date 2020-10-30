
class DockingStation
  attr_reader :bicycles
  
  def initialize
    @bicycles = []
  end

  def release_bike
    raise StandardError.new("No bike available") if @bicycles.empty?

    Bike.new
  end

  def dock(bike)
    @bicycles.push(bike)
  end

  def bike
  end
end
