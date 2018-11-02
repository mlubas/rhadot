require "base64"

hex_string = ARGV.shift || "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"

base64_string = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

def htob64(a)
  enc = Base64.strict_encode64([a].pack('H*'))
end

p htob64(hex_string)
