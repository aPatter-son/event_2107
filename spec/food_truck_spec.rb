require './lib/item'
require './lib/food_truck'
require 'rspec'

RSpec.describe FoodTruck do
  it 'exists' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item1).to be_a(Item)
    expect(item2).to be_a(Item)

  end

  it 'has a name' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item1.name).to eq("Peach Pie (Slice)")

  end

  it 'has a price' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item1.price).to eq(3.75)

  end
end

# food_truck = FoodTruck.new("Rocky Mountain Pies")
# #=> #<FoodTruck:0x00007f85683152f0...>
#
# food_truck.name
# #=> "Rocky Mountain Pies"
#
# food_truck.inventory
# #=> {}
#
# food_truck.check_stock(item1)
# #=> 0
#
# food_truck.stock(item1, 30)
#
# food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}
#
# food_truck.check_stock(item1)
# #=> 30
#
# food_truck.stock(item1, 25)
#
# food_truck.check_stock(item1)
# #=> 55
#
# food_truck.stock(item2, 12)
#
# food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
