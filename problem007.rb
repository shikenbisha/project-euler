k = 10_001
n = (k * (Math.log(k) + Math.log(Math.log(k)))).to_i

require 'prime'
prime_ary = Prime.each(n).to_a
puts prime_ary[k - 1]
