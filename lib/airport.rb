require 'weather'
require 'plane'
class AirPort
  attr_reader :hangar, :local_weather

    CAPACITY = 50

  def initialize(capacity=CAPACITY)
    @hangar = [Plane.new]
    #@local_weather = (LocalWeather.new)
  end

public
def leave_hangar(plane)
  fail "Dangerous Weather" if LocalWeather.new.is_stormy?
  plane.take_off
  @hangar.pop
end

def new_arrival(plane)
  fail "Sorry we're full!" if isfull?
  fail "Dangerous Weather" if LocalWeather.new.is_stormy?
  plane.land
  @hangar << plane
end

def isfull?
  @hangar.length >= CAPACITY
end
end
