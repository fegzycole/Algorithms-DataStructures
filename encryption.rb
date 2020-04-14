# frozen_string_literal: true

def encryption(s)
  length = s.length
  column = Math.sqrt(length).ceil
  arr = []

  s = s.split('').reject { |el| el == ' ' }

  column.times do
    arr.push([])
  end

  i = 0

  while i < s.length
    if i < column
      arr[i].push(s[i])
    else
      position = i

      position -= column while position >= column
      arr[position].push(s[i])
    end
    i += 1
  end

  result = ''

  arr.each do |el|
    result += "#{el.join('')} "
  end

  result
end
