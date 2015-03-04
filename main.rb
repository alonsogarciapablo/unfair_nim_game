require './unfair_nim.rb'

input = [[1,3], [1,1,1], [10,4,5,1]]

input.each do |heaps|
  puts UnfairNim.new(heaps).solve
end