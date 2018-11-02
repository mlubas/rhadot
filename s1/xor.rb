# take two buffers and produce XOR

def xor_buffers(s1, s2)
  (s1.hex ^ s2.hex).to_s(16)
end

a = "1c0111001f010100061a024b53535009181c"
b = "686974207468652062756c6c277320657965"

p xor_buffers(a, b)
puts xor_buffers(a, b)



