module Grains
  def self.square(integer)
    raise ArgumentError unless integer.between?(1, 64)
    return 1 if integer == 1

    x = 1
    (1..(integer - 1)).map { x *= 2 }.last
  end

  def self.total
    (1..64).map { |i| square(i) }.sum
  end
end
