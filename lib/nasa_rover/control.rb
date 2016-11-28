module NasaRover
  # Control Class
  class Control
    include NasaRover::Orientation

    def initialize
    end

    def execute!(command, position)
      if command == 'M'
        move_forward(position)
      else
        send("rotate_#{command.downcase}", position)
      end
      position
    end

    private

    def rotate_r(position)
      n_orientation = Object.const_get 'NasaRover::'\
      "Orientation::#{to_command(position.orientation)}"
      position.orientation = n_orientation.turn_right
    end

    def rotate_l(position)
      n_orientation = Object.const_get 'NasaRover::'\
      "Orientation::#{to_command(position.orientation)}"
      position.orientation = n_orientation.turn_left
    end

    def move_forward(position)
      steps = NasaRover::Position.new(*Object.const_get('NasaRover::'\
      "Orientation::#{to_command(position.orientation)}::STEPS"))

      position.x += steps.x
      position.y += steps.y
    end
  end
end
