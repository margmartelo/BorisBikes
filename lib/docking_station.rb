require_relative 'bike'

class DockingStation
  
    attr_reader :bikes
    attr_accessor :capacity 
    DEFAULT_CAPACITY = 20

    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def release_bike
        fail "Sorry, there are no bikes available at the moment." if empty?
        new_bike = @bikes.pop
        fail "Sorry, there are no bikes available at the moment." if new_bike.broken?
        new_bike
    end

    def dock(bike)
        fail "It's not possible to dock; station at maximum capacity." if full? 
        @bikes.push(bike)
    end

    private 
    def full?
        @bikes.length >= DEFAULT_CAPACITY
    end

    def empty?
        @bikes.empty?
    end
end