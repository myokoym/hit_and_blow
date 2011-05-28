class HitAndBlow
  def initialize(digit)
    @answer = Array.new(digit) { rand(10) }
  end
  attr_accessor :answer

  def reply(req)
    [numHits(req), numBlows(req)]
  end

  private
  def numHits(req)
    req_a = req.to_s.split(//).map {|v| v.to_i }
    @answer.zip(req_a).inject(0) {|r, v| v[0] == v[1] ? r + 1 : r }
  end

  def numBlows(req)
    req_a = req.to_s.split(//).map {|v| v.to_i }
    blow = req_a.inject(0) {|r, v| @answer.include?(v) ? r + 1 : r } 
    blow -= numHits(req)
  end
end

