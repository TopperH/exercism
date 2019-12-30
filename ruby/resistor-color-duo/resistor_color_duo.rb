class ResistorColorDuo
  COLOR_LIST = %w(black brown red orange yellow green blue violet grey white)
  def self.value(color_array)
    (0..1).map { |index| COLOR_LIST.find_index(color_array[index]).to_s }.join.to_i
  end
end

