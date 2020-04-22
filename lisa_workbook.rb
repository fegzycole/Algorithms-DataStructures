# frozen_string_literal: true

def workbook(n, k, arr)
  i = 0

  special = 0

  prev_number = 0

  while i < arr.length
    current_number = prev_number + (arr[i].to_f / k).ceil

    j = prev_number + 1

    dupl = k.dup

    pause = arr[i] > k ? k : arr[i]

    num = arr[i]

    while j <= current_number
      special += 1 if (dupl - k + 1..pause).to_a.include? j

      j += 1

      num -= k

      pause = num > k ? dupl + k : dupl + num

      dupl += k
    end

    i += 1
    prev_number = current_number
  end

  special
end

p workbook(5, 3, [4, 2, 6, 1, 10])
