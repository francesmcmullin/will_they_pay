module ResultsHelper
  def percent_of_denials
    return 0 if @results.empty?

    @results.where(percent_covered: 0).count / @results.count
  end

  def rate_used
    return 0 if @results.empty?

    @results.where(days_waited: 0).count / @results.count
  end
end
