def palindrome_number_?(number)
  number.to_s.reverse == number.to_s
end

ary = (100..999).to_a
result = ary.product(ary).map { |i, j| i * j }
            .select { |n| palindrome_number_?(n) }
            .max
puts result
