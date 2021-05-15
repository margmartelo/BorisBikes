require 'docking_station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike }   

    describe '#release_bike' do
       it "should release a bike" do
          bike = Bike.new
          subject.dock(bike)
          expect(subject.release_bike).to eq bike
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
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end

    it "should raise an error in the case of a bike is already docked at the station" do 
        bike = Bike.new
        subject.dock(bike)
        expect { subject.dock(bike) }.to raise_error("It's not possible to dock; station at maximum capacity.")
    end

end

