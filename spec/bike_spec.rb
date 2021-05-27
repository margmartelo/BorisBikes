require 'bike'

describe Bike do

  it "should identify a working bike" do
    bike = Bike.new
    expect(bike.broken?).to be false
  end 

  it "allows a broken bike to be reported" do
      subject.report_broken
      expect(subject).to be_broken
    end
end
