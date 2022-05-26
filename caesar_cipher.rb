def character_shift(value, shift)
  (value + shift) % 26
end

def encode(character, base, shift)
  ascii_code = character.ord
  code_wrt_a = ascii_code - base
  shifted_code_wrt_a = character_shift(code_wrt_a, shift)
  shifted_ascii_code = shifted_code_wrt_a + base
  shifted_ascii_code.chr
end

def caesar_cipher(string, shift)
  lowercase = 'a'..'z'
  uppercase = 'A'..'Z'
  string.split('').map do |character|
    if uppercase.include?(character)
      base = 'A'.ord
      encode(character, base, shift)
    elsif lowercase.include?(character)
      base = 'a'.ord
      encode(character, base, shift)
    else
      character
    end
  end
        .join('')
end

# puts caesar_cipher("What a string!", 5)
puts('Enter string to encode with caesar-cipher:')
string = gets
puts('Enter the shift value:')
shift = gets.chomp.to_i
puts('Encoded string is:')
p caesar_cipher(string, shift)
