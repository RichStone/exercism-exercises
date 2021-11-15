require "rspec"
require_relative "lasagna"

RSpec.describe Lasagna do
  let(:lasagna) { Lasagna.new }

  it "ensures that the class exists" do
    expect(described_class).to be
  end

  it "has an expected oven time" do
    expect(Lasagna::EXPECTED_MINUTES_IN_OVEN).to eq(40)
  end

  context "#remaining_minutes_in_oven" do
    it "calculates remaining minutes" do
      expect(lasagna.remaining_minutes_in_oven(30)).to eq(10)
    end

    it "returns 0 minutes for overcooked lasagna" do
      expect(lasagna.remaining_minutes_in_oven(55)).to eq(0)
    end

    it "returns expected cooking time for 0 minutes" do
      expect(
        lasagna.remaining_minutes_in_oven(
          Lasagna::EXPECTED_MINUTES_IN_OVEN)).to eq(0)
    end

    it "returns expected cooking time for negative values" do
      expect(
        lasagna.remaining_minutes_in_oven(
          Lasagna::EXPECTED_MINUTES_IN_OVEN)).to eq(0)
    end
  end

  context "#preparation_time_in_minutes" do
    it "calculates the time" do
      expect(lasagna.preparation_time_in_minutes(2)).to eq(4)
    end

    it "returns 0 for prep time <= 0" do
      expect(lasagna.preparation_time_in_minutes(0)).to eq(0)
      expect(lasagna.preparation_time_in_minutes(-3)).to eq(0)
    end
  end

  context "#total_time_in_minutes" do
    it "sums up prep & remaining times" do
      expect(lasagna.total_time_in_minutes(
        number_of_layers: 3, actual_minutes_in_oven: 20
      )).to eq(26)
    end

    it "gives correct sum for 0 layers" do
      expect(lasagna.total_time_in_minutes(
        number_of_layers: 0, actual_minutes_in_oven: 18
      )).to eq(18)
    end

    it "gives correct sum for 0 layers" do
      expect(lasagna.total_time_in_minutes(
        number_of_layers: 4, actual_minutes_in_oven: 0
      )).to eq(8)
    end
  end
end
