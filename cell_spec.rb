require "rubygems"
require "rspec"
require "cell"

describe Cell, "is mouse click area" do
  it "左上と右下の位置を指定" do
    cell = Cell.new(10, 20, 100, 150)
    cell.getLeft.should == 10
    cell.getUp.should == 20
    cell.getRight.should == 100
    cell.getDown.should == 150
  end 

  it "クリックされたかどうか判定" do
    cell = Cell.new(10, 20, 100, 150)
    cell.on?(10, 20).should == true
  end
end
