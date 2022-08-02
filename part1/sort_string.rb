def sort_string(string)
  string.split.sort { |s1, s2| s1.length <=> s2.length }.join(' ')
end
