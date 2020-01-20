# frozen_string_literal: true

class Node # :nodoc:
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList # :nodoc:
  # setup head and tail
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(number)
    node = Node.new(number)

    if !head
      self.head = node
    else
      current = head

      current = current.next_node while current.next_node

      current.next_node = node
    end

    self.size += 1
  end

  def get(index)
    current = head
    count = 0

    while current
      return current.value if count == index

      count += 1
      current = current.next_node
    end
  end
end
