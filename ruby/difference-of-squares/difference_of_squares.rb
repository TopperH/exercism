class Squares
  def initialize(integer)
    @range = (1..integer)
  end

  def square_of_sum
    @range.sum**2
  end

  def sum_of_squares
    @range.map { |x| x**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
