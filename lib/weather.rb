
class LocalWeather
  attr_reader :weather
  def initialize
    @weather = [true, false].sample
  end
  def is_stormy?
    @weather
  end
end
