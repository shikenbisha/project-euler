def sum_from_1_to(n)
    n * (n + 1) / 2 
end

def sum_of_multiples(n, divisor)
    multiples_count = (n - 1) / divisor
    sum_from_1_to(multiples_count) * divisor    
end

x = sum_of_multiples(1000,3)
y = sum_of_multiples(1000,5)
z = sum_of_multiples(1000,15)
w = x + y - z
puts w