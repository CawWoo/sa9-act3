#Vending machine class

class VendingMachine

attr_reader :bottles

  def initialize(bottles = 2)
    @bottles = bottles
  end

  def purchase(amount)
    @bottles -= amount
  end

  def restock(amount)
    @bottles += amount
  end

  def get_inventory
    @bottles.dup
  end

  def report
    puts "Inventory: #{@bottles} bottles"
  end
end
