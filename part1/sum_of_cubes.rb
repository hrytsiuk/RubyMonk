def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, n| sum += n**3 }
end
