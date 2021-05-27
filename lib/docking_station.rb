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
        if empty?
            raise StandardError.new "Sorry, there are no bikes available at the moment." 
        elsif new_bike = @bikes.pop
           if new_bike.broken?
              raise StandardError.new "Sorry, there are no bikes available at the moment."
           else
              new_bike 
           end
        end
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