require 'pry'

def length_finder(input_array)
  input_array.map do |i|
    i.is_a?(Integer) ? i.to_s.length : i.length
  end
end
