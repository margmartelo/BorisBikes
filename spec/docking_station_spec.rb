require 'docking_station'

describe DockingStation do 
    it "should respond to the method release_bike" do
      expect(subject).to respond_to :release_bike
    end       
end