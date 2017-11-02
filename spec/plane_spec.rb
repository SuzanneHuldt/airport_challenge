require 'plane.rb'

describe Plane do

  context "it takes off" do
  it "sets airborne to true" do
    plane = Plane.new
    expect(plane.take_off).to be true
  end
  end

  context "it lands" do
  it "sets airborne false" do
    plane = Plane.new
    expect(plane.land).to be false
  end
  end

end
