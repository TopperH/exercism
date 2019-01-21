class Robot
  attr_reader :name
  @@possible_names = ("AA000".."ZZ999").to_a.shuffle

  def self.forget
    @@possible_names = ("AA000".."ZZ999").to_a.shuffle
  end

  def initialize
    @name = @@possible_names.shift
  end

  def reset
    initialize
  end

end
