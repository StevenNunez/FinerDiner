require 'spec_helper'

describe Menu do 
  before do 
    @menu = Menu.new
  end
  it "can have MenuItems added to it" do 
    menu_item = MenuItem.new 
    menu_item.name = "Awesome Hotdogs"
    menu_item.price = "2.99"

    @menu.add menu_item

    @menu.show.should == ["1. Awesome Hotdogs, only $2.99!"]
  end

  it "can have no items in it" do
    @menu.show.should == []
  end

  it "returns nil if invalid fetch value given" do 
    @menu.fetch(1).should be_nil
    @menu.fetch(-1).should be_nil
    @menu.fetch(100).should be_nil
    @menu.fetch("yogurt").should be_nil
  end

  describe "working with multiple menu items" do
    before do
      menu_item = MenuItem.new 
      menu_item.name = "Awesome Hotdogs"
      menu_item.price = "2.99"

      menu_item2 = MenuItem.new 
      menu_item2.name = "Chunky Bacon"
      menu_item2.price = "0.99"

      @menu = Menu.new

      @menu.add menu_item
      @menu.add menu_item2
    end

    it "can have multiple items in it" do

      result = ["1. Awesome Hotdogs, only $2.99!", "2. Chunky Bacon, only $0.99!"]
      @menu.show.should == result
    end

    it "returns an item based on item number" do 
      @menu.fetch(1).name.should == "Awesome Hotdogs"
    end
  end
end
