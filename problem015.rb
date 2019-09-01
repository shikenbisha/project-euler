grid_size = 20

def combination_of_route_on_grid(n)
    n1 = n + 1
    n2 = n * 2
    numer = (n1..n2).to_a.map.inject(:*)
    denom = (1..n).to_a.map.inject(:*)
    numer / denom
end

puts combination_of_route_on_grid(grid_size)
