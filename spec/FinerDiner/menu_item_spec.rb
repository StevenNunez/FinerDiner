require 'spec_helper'

describe MenuItem do

  before do
    @menu_item = MenuItem.new 
  end

  it "can have its name set" do 
    @menu_item.name = "Chunky Bacon"
    @menu_item.name.should == "Chunky Bacon"
  end

  it "can have its price set" do
    @menu_item.price = "2.99"
    @menu_item.price.should == "2.99"
  end

  it "can have its calorie count set" do 
    @menu_item.calorie_count = 256
    @menu_item.calorie_count.should == 256
  end

  it "can have its ingredients set" do 
    @menu_item.ingredients = [:bacon, :thats_it]
    @menu_item.ingredients.should == [:bacon, :thats_it]
  end

end
