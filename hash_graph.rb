# frozen_string_literal: true

def graph(hash_graph)
  arr = [0]
  current = hash_graph[0]

  while current[0] != 4
    x = current[0]
    arr.push(x)
    current = hash_graph[x]
  end

  arr.push(4)
end
