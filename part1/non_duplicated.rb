def non_duplicated_values(array)
  array.delete_if { |i| array.count(i) > 1}
end
