require "rubygems"
require "rspec"
require "hitandblow"

describe HitAndBlow do
  it "指定した桁数の数値を生成する" do 
    HitAndBlow.new(4).answer.to_s.should =~ /\d{4}/
  end
  it "答えを入力するとHitとBlowの数を返却する" do
    hab = HitAndBlow.new(4)
    hab.answer = 1234.to_s.split(//).map {|v| v.to_i }
    hab.reply(9999).should == [0, 0]
    hab.reply(1135).should == [2, 1]
    hab.reply(1234).should == [4, 0]
  end
end

