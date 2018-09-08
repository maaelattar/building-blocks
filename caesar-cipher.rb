def mod(num)
  (num % 26 + 26) % 26
end

def caesar_cipher(str, num)
  str_arr = str.split('')
  str_arr.collect! do |c|
    ascii_chr = c.ord
    if ascii_chr >= 65 && ascii_chr <= 90
      ascii_chr += num
      ascii_chr = ascii_chr <= 90 ? ascii_chr : mod(ascii_chr - 65) + 65
    elsif ascii_chr >= 97 && ascii_chr <= 122
      ascii_chr += num
      ascii_chr = ascii_chr <= 122 ? ascii_chr : mod(ascii_chr - 97) + 97
    end
    ascii_chr.chr
  end
  puts str_arr.join('')
end

caesar_cipher('What a string!', 5)
