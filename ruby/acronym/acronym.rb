module Acronym
  def self.abbreviate(sentence)
    sentence.split(/[^a-zA-Z]/).map{ |x| x.chr.upcase}.join
  end
end
