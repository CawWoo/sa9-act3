
require "oop_code"
bottles = VendingMachine.new(2)


RSpec.describe VendingMachine do

  describe "#purchase" do
    it "reduces the inventory by the specified amount" do
      buy = 2
      bottles = VendingMachine.new
      bottles.purchase buy
      expect(bottles.bottles).to eq(0)
    end
  end

  describe "#restock" do
    it "increases the inventory by the specified amount" do
      buy = 2
      bottles = VendingMachine.new
      bottles.restock buy
      expect(bottles.bottles).to eq(4)
    end
  end

  describe "#get_inventory" do
    it "returns the inventory" do
      bottles = VendingMachine.new
      expect (bottles.get_inventory).to eq(2)
    end
  end

  describe "#report" do
    it "prints the correct inventory" do
      expect(bottles.report).to output("Inventory: 2 bottles")
    end
  end
end
