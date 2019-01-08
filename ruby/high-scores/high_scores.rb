class HighScores
  def initialize(scores_list)
    @scores_list = scores_list
  end

  def scores
    @scores_list
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    "Your latest score was #{latest}. " + custom_report
  end

  private

  def custom_report
    if latest == personal_best
      "That's your personal best!"
    else
      "That's #{personal_best - latest} short of your personal best!"
    end
  end
end
