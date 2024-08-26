def caesar_cipher(string, shift_count=0)
  shift_count %= 26

  string.chars.map do |char|
    case char
    when 'a'..'z'
      ((char.ord - 'a'.ord + shift_count) % 26 + 'a'.ord).chr
    when 'A'..'Z'
      ((char.ord - 'A'.ord + shift_count) % 26 + 'A'.ord).chr
    else
      char
    end
  end.join
end

puts caesar_cipher('What a string!', -1)
