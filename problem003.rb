n = 600_851_475_143
root_n = Math.sqrt(n)

require 'prime'
# puts Prime.each(root_n).to_a.to_s

result = Prime.each(root_n)
              .to_a
              .select { |divisor| (n % divisor).zero? }
              .last
puts result
