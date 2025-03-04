# frozen_string_literal: true

# Encrypts a string using a Caesar cipher with the specified shift
#
# @param string [String] The string to encrypt
# @param shift [Integer] The number of positions to shift each letter
# @return [String] The encrypted string
#
# @example
#   encrypt("Hello", 1) #=> "Ifmmp"
#   encrypt("Zebra", 2) #=> "Bgdtc"
#
# @note
#   - Only letters are shifted, other characters remain unchanged
#   - Maintains the case of the original letters
#   - Positive shift moves forward in alphabet, negative shift moves backward
#   - Shift wraps around the alphabet (e.g., 'z' shifted by 1 becomes 'a')
def encrypt(string, shift)
  lower_case = ('a'..'z').to_a.join
  upper_case = ('A'..'Z').to_a.join

  shifted_lower = lower_case.chars.rotate(shift).join
  shifted_upper = upper_case.chars.rotate(shift).join

  string.tr(lower_case + upper_case, shifted_lower + shifted_upper)
end

puts encrypt('What a string!', 5)
