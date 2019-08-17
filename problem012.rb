require 'no_sltd'
require 'prime'

def num_of_divisors(n)
    Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

no_sltd def find_triangl_number(tri_num, n, target)
    if num_of_divisors(tri_num) > target
        tri_num
    else
        n += 1
        find_triangl_number(tri_num + n, n, target)
    end
end

puts find_triangl_number(3, 2, 500)
