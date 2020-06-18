def hamming_weight(n)
  binary = n.to_s(2)
  count = 0
  
  i = 0
  
  while i < binary.size
      count += 1 if binary[i] == '1'
      i += 1
  end
  
  count
end