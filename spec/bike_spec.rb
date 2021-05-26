require 'bike'

describe Bike do

  it "should identify a working bike" do
    bike = Bike.new
    expect(bike.working?).to be true
  end 

  it "allows a broken bike to be reported" do
      subject.report_broken
      expect(subject).to be_broken
    end
end
