module Grains
  BOARD_SQUARES = (1..64).freeze
  def self.square(integer)
    raise ArgumentError unless BOARD_SQUARES.include?(integer)

    2**(integer - 1)
  end

  def self.total
    (square(BOARD_SQUARES.last) * 2) - 1
  end
end
