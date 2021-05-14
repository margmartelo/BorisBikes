require 'docking_station'
require 'bike'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike }   

    it "should release an instance of a Bike class when release_bike method is called" do
        expect(subject.release_bike).to be_a(Bike)
    end

    it "should release bikes that are working" do
        bike = subject.release_bike
        expect(bike.working?).to be true
    end 

end

