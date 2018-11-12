require 'pry'

class Color
  R_COEF = 299
  G_COEF = 587
  B_COEF = 114
  BRINGHTNESS_DIFFERENCE = 125
  HUE_DIFFERENCE = 500

  attr_reader :r, :g, :b

  def initialize(options = {})
    @r = options[:r]
    @g = options[:g]
    @b = options[:b]
  end

  def brightness_index
    (R_COEF * r + G_COEF * g + B_COEF * b) / 1000
  end

  def brightness_difference(another)
    (brightness_index - another.brightness_index).abs
  end

  def hue_difference(another)
    (r - another.r).abs + (g - another.g).abs + (b - another.b).abs
  end

  def enough_contrast?(another)
    brightness_difference(another) > BRINGHTNESS_DIFFERENCE && hue_difference(another) > HUE_DIFFERENCE
  end
end
