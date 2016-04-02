require_relative '../spec_helper'

RSpec.describe Restorant, :type => :model do
  describe "validation" do
    let(:restorant) { FactoryGirl.build(:restorant) }
    let(:restorant_invalid) { FactoryGirl.build(:restorant_invalid) }
    let(:restorant_empty) { Restorant.new }

    it "should be valid" do
      expect(restorant.valid?).to eq(true)
    end

    it "should be invalid" do
      expect(restorant_invalid.invalid?).to eq(true)
      expect(restorant_empty.invalid?).to eq(true)
    end

    it "imageurls should be array" do
      expect(restorant.imageurls.class).to eq(Array)
    end
  end
end
