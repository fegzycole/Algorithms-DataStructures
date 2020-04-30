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

  result.count
end
