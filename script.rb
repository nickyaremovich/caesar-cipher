# frozen_string_literal: true

# hello
def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char.match?(/[a-z]/)
      start = 'a'.ord # 97
      position = char.ord - start # for a it would be 97-97=0
      new_position = (position + shift) % 26 # actual shift occurs here / modulo 26 to wrap z -> a
      (new_position + start).chr # add back the original ASCII value and convert to char
    elsif char.match?(/[A-Z]/)
      start = 'A'.ord
      position = char.ord - start
      new_position = (position + shift) % 26
      (new_position + start).chr
    else
      char
    end
  end.join
end

puts caesar_cipher('Hello, World!', 3)
