require_relative '../spec_helper'

RSpec.describe Order, :type => :model do
  describe "validation" do
    let(:order) { FactoryGirl.build(:order) }
    let(:order_invalid) { FactoryGirl.build(:order_invalid) }

    it "should be valid" do
      expect(order.valid?).to eq(true)
    end

    it "should be invalid" do
      expect(order_invalid.invalid?).to eq(true)
    end

    it "should have a restorant" do
      expect(order.restorant.nil?).to eq(false)
      expect(order.restorant.class).to eq(Restorant)
    end
  end
end