require "spec_helper"

describe NasaRover::Plateau do
	before(:all) do
		@plateau = NasaRover::Plateau.new(5,5)
		@control = NasaRover::Control.new()
	end

	before(:each) do
		@current_rover = NasaRover::Rover.new(@plateau,1,2,"N")
	end

	it "should ignore commands that gets the rover out of the plateau's maximum bounds" do
		commands = "MMMMM"
		commands.chars.each do |command|
			@current_rover.position =  @control.execute!(command,@current_rover.position.clone)
		end
		expect(@current_rover.position.to_s).to eq("1 5 N")
	end

	it "should ignore commands that gets the rover out of the plateau's minimum bounds" do
		commands = "LMM"
		commands.chars.each do |command|
			@current_rover.position =  @control.execute!(command,@current_rover.position.clone)
		end
		expect(@current_rover.position.to_s).to eq("0 2 W")
	end

end