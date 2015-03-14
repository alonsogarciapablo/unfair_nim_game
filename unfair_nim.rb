
class UnfairNim

  def initialize(heaps)
    @heaps = heaps.clone
    @stones = 0
    @solved = false
  end

  def solve
    unless solved?
      while friend_winning?
        heap = choose_heap
        add_stone(heap)
      end
    end

    @stones
  end

  private

  def solved?
    @solved
  end

  def friend_winning?
    @nim_sum = @heaps.reduce{|x, y| x ^ y}
    @solved = @nim_sum != 0
  end

  def choose_heap
    heap_nim_sums = @heaps.map{|x| x ^ @nim_sum}

    if heap_nim_sums.uniq.length == 1
      index = 0
    else
      index = heap_nim_sums.index{|x| x > @nim_sum}
    end
    index
  end

  def add_stone(heap)
    @heaps[heap] += 1
    @stones += 1
  end
end