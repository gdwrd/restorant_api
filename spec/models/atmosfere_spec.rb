require_relative '../spec_helper'

RSpec.describe Atmosfere, type: :model do
  describe "validation" do
    let(:atmosfere) { FactoryGirl.build(:atmosfere) }
    let(:atmosfere_invalid) { FactoryGirl.build(:atmosfere_invalid) }

    it "should be valid" do
      expect(atmosfere.valid?).to eq(true)
    end

    it "should be invalid" do
      expect(atmosfere_invalid.invalid?).to eq(true)
    end
  end
end