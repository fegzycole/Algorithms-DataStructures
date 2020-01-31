# frozen_string_literal: true

def fairRations(b)
  new_b = b.dup.reverse
  i = 0
  count = 0
  return 0 if new_b.all?(&:even?)

  while i < new_b.length
    if new_b[i].odd? && new_b[i + 1]
      new_b[i] += 1
      new_b[i + 1] += 1
      count += 2
    elsif new_b[i].odd? && !new_b[i + 1]
      return 'NO'
    end
    i += 1
  end
  count.zero? ? 'NO' : count
end
