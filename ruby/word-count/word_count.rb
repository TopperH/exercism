class Phrase
  RE = RegularExpression = {
    word_even_with_apostrophe: /\b[\w']+\b/
  }.freeze

  private_constant :RegularExpression

  def word_count
    sentence.downcase.scan(RE[:word_even_with_apostrophe]).tally
  end

  private

  attr_reader :sentence
  def initialize(sentence)
    @sentence = sentence
  end
end

if defined?(Minitest)
  describe Phrase do
    %w[RE Regularexpression].each do |private_const|
      describe private_const do
        it 'must be a private constant' do
          assert_raises NameError do
            Phrase.private_const
          end
        end
      end
    end
  end
end
