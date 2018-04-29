n = 1000
puts (1..n-1)
    .select {|number| (number % 3 == 0) || (number % 5 ==0) }
    .sum()