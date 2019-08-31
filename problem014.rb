def next_num_of(n)
    if (n % 2) == 0
        n / 2
    else
        3 * n + 1
    end
end

def Collatz_sequece_of(num, seq)
    seq.push(num)
    if num > 1 then
        Collatz_sequece_of(next_num_of(num), seq)
    else
        seq
    end
end

def find_longest_Collatz_chain(upper_num)
    target_number = 1
    max_length = 1
    temporary_sequece = []
    longest_Collatz_sequece = [1]
    (1..upper_num).each{ |num|
        temporary_sequece = Collatz_sequece_of(num, [])
        chain_length = temporary_sequece.length
        if max_length < chain_length then
            target_number = num
            max_length = chain_length
            longest_Collatz_sequece = temporary_sequece
        end
    }
    return target_number, max_length, longest_Collatz_sequece
end

def write_sequence(seq)
    seq.each_with_index{ |num, idx|
        if idx == seq.length - 1 then
            puts num.to_s
        else
            print num.to_s + "->"
        end
    }
end

result = find_longest_Collatz_chain(1_000_000)
puts "target number   = " + result[0].to_s
puts "sequence length = " + result[1].to_s
write_sequence(result[2])
