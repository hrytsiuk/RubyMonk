def kaprekar?(k)
  digits = k.to_s.length
  square = (k ** 2).to_s
  right = square[-digits..-1]

  left = square.length.even? ? square[0..digits-1] : square[0..digits-2]

  k == left.to_i + right.to_i
end
