def substrings(str, dictionary)
  result = Hash.new
  return result if str.empty?

  for dict in dictionary
    dict = dict.downcase
    if str.include?(dict)
      result[dict] = result.fetch(dict, 0) + 1
    end
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","GO","howdy","it","i","low","own","part","partner","sit"]
puts substrings('going', dictionary)