class Scrabble
  LETTER_SCORES = {
    %w[A E I O U L N R S T] =>  1,
    %w[D G]                 =>  2,
    %w[B C M P]             =>  3,
    %w[F H V W Y]           =>  4,
    %w[K]                   =>  5,
    %w[J X]                 =>  8,
    %w[Q Z]                 => 10
  }.freeze

  def initialize(word)
    @letters = word.to_s.upcase.scan(/\w/)
  end

  def score
    @letters.map { |letter| score_for_letter(letter) }.sum
  end

  private

  def score_for_letter(letter)
    LETTER_SCORES.find { |k, _v| k.include?(letter) }.last
  end
end
