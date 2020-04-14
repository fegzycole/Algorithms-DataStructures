# frozen_string_literal: true

def hanoi_steps(number_of_discs)
  move_discs(number_of_discs, 1, 2, 3)
end

def move_discs(n, a, b, c)
  if n.positive?
    move_discs(n - 1, a, c, b)
    puts "#{a}->#{c}"
    move_discs(n - 1, b, a, c)
  end
end

hanoi_steps(3)
