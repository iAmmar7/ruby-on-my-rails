def ceaser_cipher(str, shift)
  return str if str.empty?

  str.chars.map do |ch|
    if ch.between?('a', 'z')
      (((ch.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
    elsif ch.between?('A', 'Z')
      (((ch.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
    else
      ch
    end
  end.join
end

puts ceaser_cipher('abcd', 1)
