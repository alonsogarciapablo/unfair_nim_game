
class UnfairNim

  def initialize(heaps)
    @heaps = heaps.clone
    @number_of_stones = nil
  end

  def solve
    return @number_of_stones if @number_of_stones

    @number_of_stones = 0
    @nim_sum = calculate_nim_sum
    while @nim_sum != 0
      @heaps[selected_heap_index] += 1
      @number_of_stones += 1
      @nim_sum = calculate_nim_sum
    end
    @number_of_stones
  end

  private

  def calculate_nim_sum
    @heaps.reduce{|x, y| x ^ y}
  end

  def selected_heap_index
    heap_nim_sums = @heaps.map{|x| x ^ @nim_sum}

    if heap_nim_sums.uniq.length == 1
      index = 0
    else
      index = heap_nim_sums.index{|x| x > @nim_sum}
    end
    index
  end
end