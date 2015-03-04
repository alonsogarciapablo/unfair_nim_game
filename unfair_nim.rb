
class UnfairNim

  def self.solve(heaps)
    nim_sum = heaps.reduce{|x, y| x ^ y}
    stones = 0
    while nim_sum != 0
      heap_nim_sums = heaps.map{|x| x ^ nim_sum}
      if heap_nim_sums.uniq.length == 1
        index = 0
      else
        y = heap_nim_sums.select{|x| x > nim_sum}.first
        index = heap_nim_sums.index(y)
      end
      heaps[index] += 1
      stones += 1
      nim_sum = heaps.reduce{|x, y| x ^ y}
    end
    stones
  end

end