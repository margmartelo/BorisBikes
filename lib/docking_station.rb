require_relative 'bike'

class DockingStation
  
    attr_reader :bike

    def release_bike
        fail "Sorry, there are no bikes available at the moment." unless @bike
        @bike
    end

    def dock(bike)
        fail "It's not possible to dock; station at maximum capacity." if @bike
        @bike = bike
    end
end