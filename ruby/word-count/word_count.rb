class Phrase
  private

  RegularExpression = {
    word_even_with_apostrophe: /\b[\w']+\b/,
  }
  
  attr_reader :sentence
  def initialize(sentence)
    @sentence = sentence
  end

  public

  def word_count
    sentence.downcase.scan(RegularExpression[:word_even_with_apostrophe]).tally
  end
end
