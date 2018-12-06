module Grains
  BOARD_SQUARES = (1..64).freeze
  def self.square(integer)
    raise ArgumentError unless BOARD_SQUARES.include?(integer)

    integer**(integer - 1)
  end

  def self.total
    BOARD_SQUARES.map { |i| square(i) }.sum
  end
end
