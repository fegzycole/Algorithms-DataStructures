# frozen_string_literal: true

def add_two_numbers(l1, l2)
  arr1 = []
  arr2 = []
  while l1
    arr1.push(l1.val)
    l1 = l1.next
  end
  while l2
    arr2.push(l2.val)
    l2 = l2.next
  end
  arr1 = arr1.reverse.join('').to_i
  arr2 = arr2.reverse.join('').to_i

  (arr1 + arr2).to_s.reverse.split('').map(&:to_i)
end
