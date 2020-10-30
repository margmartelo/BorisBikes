require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe DockingStation do
  it "it to return a working bike" do
    expect(subject.release_bike).to be_working
  end
end

describe DockingStation do
  it {is_expected.to respond_to :bike}
end

describe DockingStation do
  it "returns docked bikes" do
    station = DockingStation.new
    expect(station.release_bike).to be_a_kind_of(Bike)
  end
end

describe DockingStation do
  it "would check if a bike has been docked" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.bicycles).to include(bike)
  end
end
