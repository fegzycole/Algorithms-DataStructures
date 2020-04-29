# frozen_string_literal: true
require 'set'

def find_duplicates(array)
  # write your code here
  unique = Set[]
  dups = []

  array.each do |el|
    dups.push(el) if unique.include?(el)
    unique.add(el) unless unique.include?(el)
  end

  dups
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
