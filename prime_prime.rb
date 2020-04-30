# frozen_string_literal: true

def number_of_primes(arr)
  max = arr.max

  eras = (2..max).to_a

  result = arr.dup

  i = 0

  while i < eras.length
    current_no = eras[i]
    sub_array = []

    count = 2

    while current_no < max
      current_no = eras[i] * count

      sub_array.push(current_no) unless current_no > max

      count += 1
    end

    result = result.reject { |el| sub_array.include?(el) }

    i += 1
  end

  result
end

def prime_prime(array)
  hash = {}
  prime_numbers = number_of_primes(array)

  prime_numbers.each do |prime|
    count = 0
    array.each do |el|
      count += 1 if (el % prime).zero?
    end

    hash[prime] = count
  end

  hash.max_by { |_k, v| v }[0]
end
