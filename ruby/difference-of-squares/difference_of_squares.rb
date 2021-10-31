class Squares
  attr_reader :input_arr

  def initialize(input)
    @input_arr = [*1..input]
  end

  def square_of_sum
    input_arr.reduce(0, :+) ** 2
  end

  def sum_of_squares
    input_arr.map(&:**.with(2)).reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

# patch Symbol ":" to use map like this: map(&:**.with(2))
# https://stackoverflow.com/a/23711606/5925094
class Symbol
  def with(*args, &block)
    ->(caller, *rest) { caller.send(self, *rest, *args, &block) }
  end
end