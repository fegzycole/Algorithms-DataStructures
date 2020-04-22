# frozen_string_literal: true

def bfs(graph)
  arr = [0]
  queue = [0]

  while arr.length < graph.keys.length
    graph[queue[0]].each do |el|
      queue.push(el) unless arr.include? el
      arr.push(el) unless arr.include? el
    end

    queue.shift
  end

  p arr
end
