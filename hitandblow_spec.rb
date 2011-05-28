require "rubygems"
require "rspec"
require "hitandblow"

describe HitAndBlow do
  it "w’è‚µ‚½Œ…”‚Ì”’l‚ğ¶¬‚·‚é" do 
    HitAndBlow.new(4).answer.to_s.should =~ /\d{4}/
  end
  it "“š‚¦‚ğ“ü—Í‚·‚é‚ÆHit‚ÆBlow‚Ì”‚ğ•Ô‹p‚·‚é" do
    hab = HitAndBlow.new(4)
    hab.answer = 1234.to_s.split(//).map {|v| v.to_i }
    hab.reply(9999).should == [0, 0]
    hab.reply(1135).should == [2, 1]
    hab.reply(1234).should == [4, 0]
  end
end

