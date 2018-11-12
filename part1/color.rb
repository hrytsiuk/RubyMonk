require 'pry'

class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299*r + 587*g + 114*b) / 1000
  end

  def brightness_difference(another)
    (brightness_index - another.brightness_index).abs
  end

  def hue_difference(another)
    (r - another.r).abs + (g - another.g).abs + (b - another.b).abs
  end

  def enough_contrast?(another)
    brightness_difference(another) > 125 && hue_difference(another) > 500
  end
end
