k   = 1000
k2  = k / 2
k3  = k / 3
val = (k * k) / 2
a = 1
b = 1

while a < k3 
    while b < k2
        if k * (a + b) - (a * b) == val then
            calculate_end_flag = 1
            break 
        else
            b += 1
        end
    end
    if calculate_end_flag == 1 then
        c = k - a - b
        break
    else
        a += 1
        b  = 1
    end
end

puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "abc = #{a*b*c}"
