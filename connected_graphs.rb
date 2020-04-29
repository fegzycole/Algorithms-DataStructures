# frozen_string_literal: true

def connected_graph?(graph)
  arr = [0]
  queue = [0]

  while arr.length < graph.keys.length
    break unless queue[0]

    graph[queue[0]].each do |el|
      queue.push(el) unless arr.include? el
      arr.push(el) unless arr.include? el
    end

    queue.shift
  end

  arr.length == graph.keys.length
end
