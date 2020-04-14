# frozen_string_literal: true

def move(starting, goal)
  pegs = [1, 2, 3]
  
  i = 0
  middle = nil

  while i < pegs.length
    if pegs[i] != starting && pegs[i] != goal
      middle = pegs[i]
    end

    i += 1
  end
  
  result = "#{starting} -> #{middle} "
  result += "#{starting} -> #{goal} "
  result += "#{middle} -> #{goal}"
  result
end

puts move(1, 3)
