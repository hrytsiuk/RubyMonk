def number_shuffle(number)
  array_of_digits = number.to_s.chars.map(&:to_i)

  array_of_digits.permutation.to_a.map { |i| i.join().to_i }
end
