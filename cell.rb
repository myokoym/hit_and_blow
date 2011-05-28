class Cell
  def initialize(left, up, right, down)
    @left = left
    @up = up
    @right = right
    @down = down
  end

  def on?(x, y)
    if (x >= @left &&
        x <= @right && 
        y >= @up && 
        y <= @down) 
      return true
    end
    false
  end

  def getLeft
    @left
  end

  def getUp
    @up
  end

  def getRight
    @right
  end

  def getDown
    @down
  end
end
