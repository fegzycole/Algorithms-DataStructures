# frozen_string_literal: true

def divisibleSumPairs(n, k, ar)
  count = 0
  ar.each_with_index do |num, idx|
    ar.each_with_index do |num2, idx2|
      count += 1 if ((num + num2) % k).zero? && idx < idx2
    end
  end
  count
end
