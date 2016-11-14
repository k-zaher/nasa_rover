class NasaRover::Plateau


	def initialize(width,height)
		@width,@height = width.to_i,height.to_i
	end

	def inbound?(positon)
		x = positon.x
		y = positon.y
		(@width >=  x && @height >= y) && (x >= 0 && y >= 0)
	end
end