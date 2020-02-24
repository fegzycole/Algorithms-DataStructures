# frozen_string_literal: true

def balanced_brackets?(string)
  arr = string.split('').select { |el| ['[', ']', '{', '}', '(', ')'].include? el }

  return false if arr.length == 1

  stack = []
  i = 0
  while i < arr.length
    if ['[', '{', '('].include?(arr[i])
      stack.push(arr[i])
    else
      return false if stack.empty?

      top = stack.pop

      return false if (top == '[' && arr[i] != ']') || (top == '(' && arr[i] != ')') || (top == '{' && arr[i] != '}')
    end
    i += 1
  end
  true
end

puts balanced_brackets?('(hello')
# => true
