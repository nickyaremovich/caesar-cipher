# hello
def caesar_cipher(string)
  string.chars.map do |char|
    char.ord
  end
end

puts caesar_cipher("Hello, World!")

