require 'rails_helper'
RSpec.describe StringCalculator do
  describe "add number calculator" do

    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "handles multiple numbers" do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it "supports new lines as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for negative numbers" do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("Negative numbers not allowed: -2, -3")
    end
  end
end
