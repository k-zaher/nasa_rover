require 'forwardable'

class NasaRover::Rover
	extend Forwardable
	attr_accessor :position

 	def_delegators :@plateau, :inbound?

 	#Rover Initializer
	def initialize(plateau,x,y,orientation)
		@plateau = plateau
		@position = NasaRover::Position.new(x,y,orientation)
		@control = NasaRover::Control.new()
	end

	#
	#Should ignore new position if it is out of bound
	#
	def position=(position)
		if self.inbound?(position)
			@position = position
		else
			puts "#{position.to_s} is out of bound and has been ignored"
		end
	end
end