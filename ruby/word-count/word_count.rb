class Phrase
  private

  attr_reader :sentence
  def initialize(sentence)
    @sentence = sentence
  end

  public

  def word_count
    sentence.downcase.split(/'?[^\w']+'?/).reject(&:empty?).tally
  end
end
