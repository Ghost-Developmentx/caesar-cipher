# frozen_string_literal: true

def encrypt(string, shift)
  lower_case = ('a'..'z').to_a.join
  upper_case = ('A'..'Z').to_a.join

  shifted_lower = lower_case.chars.rotate(shift).join
  shifted_upper = upper_case.chars.rotate(shift).join

  string.tr(lower_case + upper_case, shifted_lower + shifted_upper)
end

puts encrypt('What a string!', 5)
