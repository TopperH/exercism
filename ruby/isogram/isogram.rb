module Isogram
  def self.isogram?(input)
    letters_array = input.downcase.scan(/\w/)
    letters_array == letters_array.uniq
  end
end
