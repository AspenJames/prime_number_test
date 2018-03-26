require 'benchmark'

def prime?(num)
  if num < 0 or num == 0 or num == 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
    end
  end
end

puts "Learn.co Solution"
puts
[100069, 104729, 104725, 1299709, 10570841].each do |num|
  puts Benchmark.measure{prime?(num)}
  puts prime?(num)
end
puts
