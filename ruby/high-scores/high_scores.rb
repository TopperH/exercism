class HighScores
  def initialize(scores_list)
    @scores_list = scores_list
  end

  def scores
    @scores_list
  end

  def latest
    @scores_list.last
  end

  def personal_best
    @scores_list.max
  end

  def personal_top
    @scores_list.sort { |x, y| y <=> x }[0..2]
  end

  def report
    "#{common_report} #{custom_report}"
  end

  private

  def common_report
    "Your latest score was #{latest}."
  end

  def custom_report
    if latest == personal_best
      "That's your personal best!"
    else
      "That's #{personal_best - latest} short of your personal best!"
    end
  end
end
