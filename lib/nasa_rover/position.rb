class NasaRover::Position
  attr_accessor :x, :y,:orientation

	def initialize(x,y,orientation= nil)
		@x,@y,@orientation = x.to_i,y.to_i,orientation
	end

	def to_s
		"#{@x} #{@y} #{@orientation}"
	end

end
