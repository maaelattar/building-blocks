def substrings(sentence, dict)
  hash = Hash.new(0)

  str_arr = sentence.downcase.split(' ')

  str_arr.each do |word|
    dict.each do |substr|
      hash[substr] += 1 if word.include?(substr)
    end
  end

  puts hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below', dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
