class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    find_rows
  end

  def columns
    arr_of_rows = find_rows
    Array.new(arr_of_rows[0].size) { |c| Array.new(arr_of_rows.size) { |r| arr_of_rows[r][c] } }
  end

  private

  def find_rows
    @matrix.split("\n").map { |x| x.split(" ").map(&:to_i) }
  end
end
