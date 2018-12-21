class Scrabble
  LETTER_SCORES = {
    %w[A E I O U L N R S T] =>  1,
    %w[D G]                 =>  2,
    %w[B C M P]             =>  3,
    %w[F H V W Y]           =>  4,
    %w[K]                   =>  5,
    %w[J X]                 =>  8,
    %w[Q Z]                 => 10
  }.flat_map { |group, score| group.map { |letter| [letter, score] } }
                  .to_h.freeze

  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @letters = word.to_s.upcase.scan(/\w/)
  end

  def score
    @letters.sum { |letter| LETTER_SCORES[letter] }
  end
end
