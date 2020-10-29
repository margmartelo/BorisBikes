require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe DockingStation do 
  it "it to return a working bike" do
    expect(subject.release_bike).to be_working
  end
end
