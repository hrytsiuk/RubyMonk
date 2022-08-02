def palindrome?(sentence)
  string = sentence.downcase.split.join
  string == string.reverse
end
