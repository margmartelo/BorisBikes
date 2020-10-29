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
  it "It docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end

describe DockingStation do 
  it {is_expected.to respond_to :bike}
end

describe DockingStation do
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
