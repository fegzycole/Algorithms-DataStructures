# frozen_string_literal: true

def palindrome_checker(string)
  if string.length == 1 || string.length.zero?
    true
  elsif string[0] == string[-1]
    palindrome_checker(string[1..-2])
  else
    false
  end
end

def bottles_checker(num)
  if num.zero?
    puts 'no more bottles of beer on the wall'
  else
    puts "#{num} bottles of beer on the wall"
    bottles_checker(num - 1)
  end
end

def fibonacci(num)
  if num < 2
    1
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

def flattener(array, index = 0)
  if index == array.length - 1
    array.flatten
  elsif array[index].is_a? Array
    array[index].flatten
    flattener(array, index + 1)
  else
    flattener(array, index + 1)
  end
end

p palindrome_checker('racecar')
p bottles_checker(5)
p fibonacci(5)
p flattener([[1, [8, 9]], [3, 4]])
