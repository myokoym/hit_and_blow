require "rubygems"
require "rspec"
require "cell"

describe Cell, "is mouse click area" do
  it "����ƉE���̈ʒu���w��" do
    cell = Cell.new(10, 20, 100, 150)
    cell.getLeft.should == 10
    cell.getUp.should == 20
    cell.getRight.should == 100
    cell.getDown.should == 150
  end 

  it "�N���b�N���ꂽ���ǂ�������" do
    cell = Cell.new(10, 20, 100, 150)
    cell.on?(10, 20).should == true
  end
end
