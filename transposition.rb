# frozen_string_literal: true

def transpose(string)
  i = 0
  while i < string.length
    j = 0
    while j < string.length
      if string[j] == 'g' && string[j + 1] == 'n'
        string[j] = 'n'
        string[j + 1] = 'g'
      end
      j += 1
    end
    i += 1
  end
  string
end
