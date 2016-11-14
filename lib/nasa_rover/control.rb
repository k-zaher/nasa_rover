class NasaRover::Control

	DIRECTIONS = {"N" => [0,1],"E" => [1,0],"S" => [0,-1],"W" => [-1,0]}

	def initialize
	end

	def execute!(command,position)
		case command 
		when "L"
			rotate_left!(position)
		when "R"
			rotate_right!(position)
		when "M"
			move_forward!(position)
		else
			puts "#{command} ignored"
		end

		return position
	end

	private 
	def rotate_right!(position)
		current_orientation = DIRECTIONS.keys.index(position.orientation)
		next_orientation = current_orientation + 1 if current_orientation != DIRECTIONS.keys.length - 1 
		next_orientation = 0 if current_orientation == DIRECTIONS.keys.length - 1 
		position.orientation = DIRECTIONS.keys[next_orientation]
	end

	def rotate_left!(position)
		current_orientation = DIRECTIONS.keys.index(position.orientation)
		next_orientation = current_orientation - 1 if current_orientation != 0
		next_orientation = -1  if current_orientation == 0
		position.orientation = DIRECTIONS.keys[next_orientation]
	end


	def move_forward!(position)
		steps = NasaRover::Position.new(*DIRECTIONS[position.orientation])

		position.x += steps.x
		position.y += steps.y
	end
end