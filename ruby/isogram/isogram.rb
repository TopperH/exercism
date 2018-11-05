module Isogram
  def self.isogram?(input)
    letters_array = input.downcase.scan(/\w/)
    letters_array.size == letters_array.uniq.size
  end
end
