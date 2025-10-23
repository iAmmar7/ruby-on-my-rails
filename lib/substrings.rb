def substrings(str, dictionary)
  result = {}
  return result if str.empty?

  dictionary.each do |dict|
    dict = dict.downcase
    result[dict] = result.fetch(dict, 0) + 1 if str.include?(dict)
  end

  result
end

dictionary = %w[below down go going horn how GO howdy it i low own part partner
                sit]
puts substrings('going', dictionary)
