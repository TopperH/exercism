module Isogram
  def self.isogram?(input)
    letters_array = input.downcase.scan(/\w/)
    letters_array.sort == letters_array.uniq.sort
  end
end
