require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to :bike }

  describe "#release_bike" do
    it "it to return a working bike" do
      test = DockingStation.new
      test.dock(Bike.new)
      expect(test.release_bike).to be_working
    end

    it "returns docked bikes" do
      station = DockingStation.new
      station.dock(Bike.new)
      expect(station.release_bike).to be_a_kind_of(Bike)
    end
  end

  describe "#dock" do
    it "would check if a bike has been docked" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.bicycles).to include(bike)
    end

    it "will throw an error if #release_bike called when no bikes in station" do
      empty = DockingStation.new
      expect { empty.release_bike }.to raise_error("No bike available")
    end
  end
end
