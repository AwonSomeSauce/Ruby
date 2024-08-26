def sub_strings(string, dictionary)
  substring_count = Hash.new(0)

  string.downcase.split.each do |word|
    dictionary.reduce(substring_count) do |accumulator, substring|
      accumulator[substring] += 1 if word.include?(substring)
      accumulator
    end
  end

  substring_count
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
