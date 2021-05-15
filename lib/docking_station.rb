require_relative 'bike'

class DockingStation
  
    attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        fail "Sorry, there are no bikes available at the moment." unless @bikes.length != 0
        @bikes.pop 
    end

    def dock(bike)
        fail "It's not possible to dock; station at maximum capacity." if @bikes.length >= 20
        @bikes.push(bike)
    end
end