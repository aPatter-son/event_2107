class Item
  attr_reader :name, :price
  def initialize(details)
    @name = details[:name]
    @price = details[:price]
  end

  def price
    @price.sort_by do |prices|
      @price = prices.to_i
    end
      # @price = item1[price].to_i
  end
end
