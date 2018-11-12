require 'pry'

def array_of_integer?(array)
  array.all? { |i| i.is_a?(Integer) }
end
