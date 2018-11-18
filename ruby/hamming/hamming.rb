module Hamming
  def self.compute(reference_string, submitted_string)
    raise ArgumentError if reference_string.size != submitted_string.size

    reference_string.chars.zip(submitted_string.chars)
                    .count { |a, b| a != b }
  end
end
