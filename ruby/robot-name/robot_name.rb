class Robot
  attr_accessor :name

  def self.forget
  end

  def initialize
    @taken_names ||= []
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    name = ''
    loop do
      name = ("AA000".."ZZ999").to_a.sample
      duplicated = @taken_names.include?(name)
      @taken_names << name
      break unless duplicated
    end
    name
  end
end
