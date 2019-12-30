class Series
  private

  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end

  public

  def slices(slice_size)
    raise ArgumentError unless slice_size <= digits.size

    digits.each_char.each_cons(slice_size).map(&:join)
  end
end
