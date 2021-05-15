require 'docking_station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike }   

    describe '#release_bike' do
       it "should release a bike" do
          subject.dock(Bike.new)
          subject.release_bike
          expect(subject.bikes.length).to eq 0
       end


       it "should raise an error if no bikes are docked at the station" do
          station = DockingStation.new
          expect { station.release_bike }.to raise_error("Sorry, there are no bikes available at the moment.")
       end
    
    end

    it "should release bikes that are working" do
        bike = Bike.new
        expect(bike.working?).to be true
    end 

    it "should allow to dock a bike to a docking station" do
        expect(subject).to respond_to(:dock).with(1).argument
    end

    it "should allow to see docked bikes" do
        subject.dock(Bike.new)
        expect(subject.bikes.length).to eq 1
        10.times { subject.dock Bike.new }
        expect(subject.bikes.length).to eq 11   
    end

    it "should raise an error in the case dock is at its maximum capacity" do 
        20.times { subject.dock Bike.new }
        expect { subject.dock(Bike.new) }.to raise_error("It's not possible to dock; station at maximum capacity.")
    end

end

