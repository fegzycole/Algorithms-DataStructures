# frozen_string_literal: true

def sort_itself(array)
  i = 1

  while i < array.length
    j = 0

    while j < i
      if array[i] < array[j]
        temp = array.delete_at(i)
        array.insert(j, temp)
      end
      j += 1
    end
    puts array.join(' ')
    i += 1
  end
end
