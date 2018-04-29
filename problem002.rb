def sum_of_even_fibonacci_numbers(previous_number, current_number, sum, terminal_number)
    if current_number > terminal_number then
        sum
    else
        next_sum = current_number % 2 == 0 ? sum + current_number : sum
        sum_of_even_fibonacci_numbers(current_number, current_number + previous_number, next_sum, terminal_number) 
    end
end

puts sum_of_even_fibonacci_numbers(1, 2, 0, 4000000)