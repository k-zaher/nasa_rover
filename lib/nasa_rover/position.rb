module NasaRover
  # Position Class
  class Position
    attr_accessor :x, :y, :orientation

    def initialize(*coordinates)
      @x, @y, @orientation = coordinates
    end

    def to_text
      "#{@x} #{@y} #{@orientation}"
    end
  end
end
