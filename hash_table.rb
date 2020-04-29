# frozen_string_literal: true

def hash_table(arr)
  hash = []

  arr.each do |el|
    hash[el.abs % 11] = hash[el.abs % 11] ? hash[el.abs % 11].push(el) : [el]
  end

  hash.compact.flatten
end
