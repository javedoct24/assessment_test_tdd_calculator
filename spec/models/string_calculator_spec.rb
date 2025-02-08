require 'rails_helper'
RSpec.describe StringCalculator do
  describe "passing empty string" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end
