
class Plane
  def initialize
    @airborne = false
  end

  def take_off
    fail "Already flying!" unless @airborne == false
    @airborne = true
  end

  def land
    fail "Already landed!" unless @airborne == true
    @airborne = false
  end

  def inair?
    @airborne
  end
end
