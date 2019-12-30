# frozen_string_literal: true

1.upto(100) { |i| (i % 15).zero? ? (puts 'FizzBuzz') : ((i % 5).zero? ? (puts 'Buzz') : ((i % 3).zero? ? (puts 'Fizz') : (puts i))) }
