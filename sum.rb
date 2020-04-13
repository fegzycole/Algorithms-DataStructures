# frozen_string_literal: true

def sum(number)
  if number == 1
    1
  else
    number + sum(number - 1)
  end
end

puts sum(4)
puts sum(10)
