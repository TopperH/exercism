module Hamming
  def self.compute(reference_string, submitted_string)
    raise ArgumentError if reference_string.size != submitted_string.size

    reference_string.scan(/\w/).zip(submitted_string.scan(/\w/))
                    .count { |a, b| a != b }
  end
end
