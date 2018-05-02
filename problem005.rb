n = 20

def  the_power_of(m, p, k)
    if m ** p > k then
        m ** (p - 1)
    else 
        the_power_of(m, p + 1, k)
    end
end

require 'prime'
ary = Prime.each(n).to_a.map do | prime_factor_of_n |
     the_power_of(prime_factor_of_n, 1, n)
end

puts  ary.inject(:*)
