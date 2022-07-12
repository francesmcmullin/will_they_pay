module ResultsHelper
  def percent_of_denials
    return 0 if @results.empty?

    @results.where(percent_covered: 0).count * 1.0 / @results.count
  end

  def rate_used
    return 0 if @results.empty?

    @results.where.not(days_waited: 0).count * 1.0 / @results.count
  end

  def average_coverage
    return 0 if @results.empty?

    @results.average(:percent_covered)
  end

  def average_wait_for_reimbursement
    return 0 if @results.empty?

    @results.average(:days_waited_for_reimbursement)
  end

  def average_wait_for_treatment
    return 0 if @results.empty?

    @results.average(:days_waited)
  end
end
