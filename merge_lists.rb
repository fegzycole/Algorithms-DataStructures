def merge_two_lists(l1, l2)
  l3 = ListNode.new
  prev = l3
  
  while !l1.nil? && !l2.nil?
      if l1.val <= l2.val
          prev.next = l1
          l1 = l1.next
      else
          prev.next = l2
          l2 = l2.next
      end
      prev = prev.next
  end
  
  prev.next = l2 if l1.nil? 
  prev.next = l1 if l2.nil? 
  
  l3.next
end