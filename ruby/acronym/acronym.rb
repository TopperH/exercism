module Acronym
  def self.abbreviate(sentence)
    sentence.scan(/\b\w/).join.upcase
  end
end
