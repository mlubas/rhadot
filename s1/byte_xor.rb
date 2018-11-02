#  the mystery string has been XOR'd against one character

myst = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"

def xor_buffers(s1, s2)
  (s1.hex ^ s2.hex).to_s(16)
end

def raw_to_english(s)

  alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  alphabet.each_byte do |c|
    b = xor_buffers(s,c.to_s(16))
    puts [b].pack('H*')
  end
end

raw_to_english(myst)
