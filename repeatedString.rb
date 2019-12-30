# frozen_string_literal: true

def repeatedString(s, n)
  if s.length == 1 && s[0] == 'a'
    n
  else
    count = s.count('a')
    divisor = n / s.length
    remainder = n % s.length
    count = (count * divisor) + s[0...remainder].count('a')
    count
  end
end
