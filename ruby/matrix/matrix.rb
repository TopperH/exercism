class Matrix
  def initialize(matrix_as_string)
    @matrix_as_string = matrix_as_string
  end

  def rows
    @matrix_as_string.lines.map { |x| x.split.map(&:to_i) }
  end

  def columns
    self.rows.transpose
  end
end
