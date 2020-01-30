# frozen_string_literal: true

def pageCount(n, p)
  return 0 if p == 1 || p == n

  if n - p < p
    if n.odd? || (n.even? && p.even?)
      ((n - p) / 2).floor
    else
      ((n - p) / 2).floor + 1
    end
  else
    (p / 2).floor
  end
end
