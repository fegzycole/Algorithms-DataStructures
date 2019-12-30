# frozen_string_literal: true

def palindromeIndex(s)
  s_dup = s.dup
  start = 0
  stop = s.length - 1

  while start != stop
    if s[start] != s[stop]
      s[start] = ''
      return start if s == s.reverse

      s.insert(start, s_dup[start])
      s[stop] = ''
      return stop if s == s.reverse

      s.insert(stop, s_dup[stop])
    end
    start += 1
    stop -= 1
  end
  -1
end
