class Order
  attr_reader :items

  def initialize
    @items = Hash.new(0)
  end

  def add(item)
    items[item] += 1 
  end
  
  def show
    items.map { |item, count| "#{item.name} x#{count}" }
  end

  def total
    items.inject(0){|memo, item| memo += total_per_item(item)}
  end

  private

  def total_per_item(item_array)
    item, quantity = item_array
    item.price.to_f * quantity
  end
end
