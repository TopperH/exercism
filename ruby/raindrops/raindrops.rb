module Raindrops
  POSSIBLE_SOUNDS = { 3 => 'Pling',
                      5 => 'Plang',
                      7 => 'Plong' }

  def self.convert(integer)
    sounds = POSSIBLE_SOUNDS.map { |key, drop_sound| (integer % key).zero? ? drop_sound : nil }.join
    sounds.empty? ? integer.to_s : sounds
  end
end
