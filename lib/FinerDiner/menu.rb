class Menu
  def initialize
    @items = []
  end

  def add(item)
    items << item
  end

  def show
    items.map.with_index do |item, position| 
      format_output(item, position)
    end
  end

  def fetch(item_number)
    items[item_number.to_i - 1] 
  end

  private

  def items
    @items
  end

  def format_output(item, position)
    "#{position +1}. #{item.name}, only $#{item.price}!"
  end
end
