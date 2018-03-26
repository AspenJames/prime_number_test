require 'benchmark'

def prime?(number)
	return false if number <= 1
	primes_to_100 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
	return true if primes_to_100.include?(number)
	primes_to_100.each{|prime| return false if number % prime == 0}
	true
end
