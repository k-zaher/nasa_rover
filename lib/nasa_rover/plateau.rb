module NasaRover
  # Plateau Class
  class Plateau
    def initialize(*bounds)
      @width, @height = bounds
    end

    def inbound?(positon)
      x = positon.x
      y = positon.y
      (@width >= x && @height >= y) && (x >= 0 && y >= 0)
    end
  end
end
