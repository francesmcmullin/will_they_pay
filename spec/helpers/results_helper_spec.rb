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

    it 'returns 0.5 if there is exactly one non-denial result and one denial result' do
      Result.create!(percent_covered: 0.7)
      Result.create!(percent_covered: 0.0)
      @results = Result.all
      expect(helper.percent_of_denials).to eq(0.5)
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

  describe '#average_wait_for_reimbursement' do
    it 'returns zero if there are no results' do
      @results = Result.all
      expect(helper.average_wait_for_reimbursement).to eq(0)
    end

    it 'return 7 if one result with 7' do
      Result.create!(days_waited_for_reimbursement: 7)
      @results = Result.all
      expect(helper.average_wait_for_reimbursement).to eq(7)
    end
  end

  describe '#average_coverage' do
    it 'returns zero if there are no results' do
      @results = Result.all
      expect(helper.average_coverage).to eq(0)
    end

    it "return 70% if one result with 70%" do
      Result.create!(percent_covered: 0.7)
      @results = Result.all
      expect(helper.average_coverage).to eq(0.7)
    end
  end

  describe '#average_wait_for_treatment' do
    it 'returns zero if there are no results' do
      @results = Result.all
      expect(helper.average_wait_for_treatment).to eq(0)
    end

    it 'return 7 if one result with 7' do
      Result.create!(days_waited: 7)
      @results = Result.all
      expect(helper.average_wait_for_treatment).to eq(7)
    end
  end
end
