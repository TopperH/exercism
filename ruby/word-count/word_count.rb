class Phrase
  private

  RegularExpression = {
    word_even_with_apostrophe: /\b[\w']+\b/,
  }
  
  private_constant :RegularExpression

  attr_reader :sentence
  def initialize(sentence)
    @sentence = sentence
  end

  public

  def word_count
    sentence.downcase.scan(RegularExpression[:word_even_with_apostrophe]).tally
  end
end

if defined?(Minitest)
  describe Phrase do
    describe :RegularExpression do
      it 'must be a private constant' do
        assert_raises NameError do
          _(Phrase::RegularExpression)
        end
      end
    end
  end
end