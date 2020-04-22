def insert(new_node, head = @root)
  # base case: catch if the tree is empty
  if @root.nil?
    @root = new_node
    return
  end
  # it helps to break the recursion when you find the empty spot
  if head.nil?
    return new_node
  end
  # if the new node is less than the head, go to the left descendant
  if new_node.data < head.data
    head.left = insert(new_node, head.left)
  # if the new node is greater than the head, go to the right descendant
  elsif new_node.data > head.data
    head.right = insert(new_node, head.right)
  end
  # return the calculated head
  return head
end
