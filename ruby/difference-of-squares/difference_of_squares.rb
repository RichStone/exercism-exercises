class Squares
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def square_of_sum
    ((n / 2.0) * (1 + n)) ** 2
  end

  def sum_of_squares
    ((2 * n + 1) * n * (n + 1)) / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
