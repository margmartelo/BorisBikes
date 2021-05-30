require 'docking_station'

describe DockingStation do 
    let(:bike) { double :bike }
    it { is_expected.to respond_to :release_bike }   

    describe '#release_bike' do
        it "should release bikes that are working" do
            allow(bike).to receive(:broken?).and_return(false)
            subject.dock(bike)
            released_bike = subject.release_bike
            expect(released_bike.broken?).to be false
        end 

       it "shouldn't release a broken bike" do
            allow(bike).to receive(:broken?).and_return(true)
            subject.dock(bike)
            expect { subject.release_bike }.to raise_error("Sorry, there are no bikes available at the moment.")
       end

       it "should raise an error if no bikes are docked at the station" do
            station = DockingStation.new
            expect { station.release_bike }.to raise_error("Sorry, there are no bikes available at the moment.")
       end
    
    end

    it "should allow to dock a working bike to a docking station" do
        subject.dock(bike)
        expect(subject.bikes).to include(bike) 
    end
    
    it "should allow to dock a broken bike to a docking station" do
        allow(bike).to receive(:broken?).and_return(false)
        subject.dock(bike)
        expect(subject.bikes).to include(bike) 
    end

    it "should allow to see docked bikes" do
        subject.dock(bike)
        expect(subject.bikes.length).to eq 1
        10.times { subject.dock double(:bike) }
        expect(subject.bikes.length).to eq 11   
    end

    it "should allow an user to set the capacity of a new station" do
        station = DockingStation.new(40)
        expect(station.capacity).to eq 40
    end

    it "should have a default capacity if none is set when a new station is created" do
        station = DockingStation.new
        expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end


    it "should raise an error in the case dock is at its maximum capacity" do 
        subject.capacity.times { subject.dock double(:bike) }
        expect { subject.dock(double(:bike)) }.to raise_error("It's not possible to dock; station at maximum capacity.")
    end

end

