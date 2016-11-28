module NasaRover
  # Orientation Module
  module Orientation
    DIRECTIONS =
      {
        'N' => 'North',
        'E' => 'East',
        'S' => 'South',
        'W' => 'West'
      }.freeze

    def to_command(input)
      raise 'Direction Not Valid' if DIRECTIONS[input].nil?
      DIRECTIONS[input]
    end
    # North Module
    module North
      STEPS = [0, 1].freeze

      class << self
        def turn_right
          'E'
        end

        def turn_left
          'W'
        end
      end
    end

    # East Module
    module East
      STEPS = [1, 0].freeze

      class << self
        def turn_right
          'S'
        end

        def turn_left
          'N'
        end
      end
    end

    # South Module
    module South
      STEPS = [0, -1].freeze

      class << self
        def turn_right
          'W'
        end

        def turn_left
          'E'
        end
      end
    end

    # West Module
    module West
      STEPS = [-1, 0].freeze

      class << self
        def turn_right
          'N'
        end

        def turn_left
          'S'
        end
      end
    end
  end
end
