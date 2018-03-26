require 'benchmark'
def prime?(number)
  return true if number == 2
  return false if number <= 1 || number.even?
  poss_divisors = ((3..(number - 1)/2).select{|num| num.odd?}).to_a
  !poss_divisors.any? { |div| number % div == 0 }
end

puts "Final"
puts
[100069, 104729, 104725, 1299709, 10570841].each do |num|
  puts Benchmark.measure{prime?(num)}
  puts prime?(num)
end
puts
