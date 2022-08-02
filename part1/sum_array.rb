class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      array.map { |i| yield(i) }.sum + initial_value
    else
      array.sum + initial_value
    end
  end
end
