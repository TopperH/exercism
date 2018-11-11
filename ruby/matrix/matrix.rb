class Matrix
  attr_accessor :rows
  attr_accessor :columns

  def initialize(matrix_as_string)
    @matrix_as_string = matrix_as_string
    @rows = extract_rows(@matrix_as_string)
    @columns = @rows.transpose
  end

  private
  def extract_rows(matrix_as_string)
    matrix_as_string.lines.map { |x| x.split.map(&:to_i) }
  end

end
