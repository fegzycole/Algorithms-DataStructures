# frozen_string_literal: true

def depth_first_search(graph)
  arr = []
  stack = [0]

  while arr.length < graph.keys.length
    val = stack.pop

    graph[val].reverse.each do |el|
      stack.push(el) unless arr.include? el
    end

    arr.push(val) unless arr.include? val
  end

  arr
end

p depth_first_search(
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
)
