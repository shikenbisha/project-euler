n = 100
ary1 = (1..n).to_a
ary2 = ary1.each.map { |i| i * i }

the_squares_of_the_sum = ary1.product(ary1).map{ |i, j| i * j }.inject(:+)
sum_of_the_squares     = ary2.inject(:+)
puts the_squares_of_the_sum - sum_of_the_squares
