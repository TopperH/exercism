module Raindrops
  POSSIBLE_SOUNDS = { 3 => 'Pling',
                      5 => 'Plang',
                      7 => 'Plong' }.freeze

  def self.convert(integer)
    sounds = POSSIBLE_SOUNDS.select { |key| (integer % key).zero? }
                            .values.join
    sounds.empty? ? integer.to_s : sounds
  end
end
