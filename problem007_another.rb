# main.rb
RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require 'prime'

RubyVM::InstructionSequence.new(<<-EOS).eval

def kth_prime_number(count, candidate, k)
  return kth_prime_number(count, candidate + 2, k) unless candidate.prime?
  if  count == k
    candidate
  else
    kth_prime_number(count + 1, candidate + 2, k)
  end
end

def k_th_prime_number(k)
  k == 1 ?  2 :  kth_prime_number(2, 3, k)
end

puts k_th_prime_number(10_001)

EOS
