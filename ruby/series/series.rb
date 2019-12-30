class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @digits.size

    @digits.each_char.each_cons(slice_size).map(&:join)
  end
end
