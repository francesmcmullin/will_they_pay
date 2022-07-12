require 'rails_helper'

RSpec.describe ResultsHelper, type: :helper do
  describe '#percent_of_denials' do
    it 'returns zero if there are no results' do
      @results = Result.all
      expect(helper.percent_of_denials).to eq(0)
    end

    it 'returns 1 if there is exactly one denial result' do
      Result.create!(percent_covered: 0.0)
      @results = Result.all
      expect(helper.percent_of_denials).to eq(1)
    end

    it 'returns 0 if there is exactly one non-denial result' do
      Result.create!(percent_covered: 0.7)
      @results = Result.all
      expect(helper.percent_of_denials).to eq(0)
    end
  end

  describe '#rate_used' do
    it 'returns zero if there are no results' do
      @results = Result.all
      expect(helper.rate_used).to eq(0)
    end

    it 'returns 1 if there is exactly one denial result' do
      Result.create!(days_waited: 0)
      @results = Result.all
      expect(helper.rate_used).to eq(1)
    end

    it 'returns 0 if there is exactly one non-denial result' do
      Result.create!(days_waited: 1)
      @results = Result.all
      expect(helper.rate_used).to eq(0)
    end

  end
end
