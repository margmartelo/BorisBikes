require_relative 'bike'

class DockingStation
  
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        fail "Sorry, there are no bikes available at the moment." if empty?
        @bikes.pop 
    end

    def dock(bike)
        fail "It's not possible to dock; station at maximum capacity." if full? 
        @bikes.push(bike)
    end

    private 
    def full?
        @bikes.length >= 20
    end

    def empty?
        @bikes.empty?
        # #empty? is a method that can be used on strings, arrays, hashes and sets. It returns true if the instance of the object has a length of zero.
    end
end