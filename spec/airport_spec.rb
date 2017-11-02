require 'airport'
require 'plane'
describe AirPort do

    it { is_expected.to respond_to(:takeoff) }
    it { is_expected.to respond_to(:isstormy?) }
    it { is_expected.to respond_to(:land) }

    context "when plane takes off" do
    it "removes plane from hangar" do
      plane = Plane.new
      expect { subject.leave_hangar(plane) }.to change { subject.hangar.count }.by(-1)
    end
    it "raises error" do
      plane = Plane.new
      unless subject.isstormy? == false
        expect { subject.leave_hangar(plane) }. to raise_error("Dangerous Weather")
      end
    end

    end

    context "when plane lands" do
      it "raises error" do
        plane = Plane.new
        unless subject.isstormy? == false
          expect { subject.new_arrival(plane) }. to raise_error("Dangerous Weather")
        end
      end
    end
      context "when landing" do
        it "adds plane to hangar" do
        plane = Plane.new
        unless subject.isstormy? == true
          expect { subject.new_arrival(plane) }.to change { subject.hangar.count }.by(+1)
      end
    end
  end
  

end
