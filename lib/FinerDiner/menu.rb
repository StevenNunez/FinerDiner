class Menu
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def show
    @items.map.with_index do |item, position| 
      "#{position +1}. #{item.name}, only $#{item.price}!"
    end
  end

end
