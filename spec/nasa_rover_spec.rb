require 'spec_helper'

describe NasaRover do
  it 'has a version number' do
    expect(NasaRover::VERSION).not_to be nil
  end
  it 'passes first test case (1 2 N)' do
    @plateau = NasaRover::Plateau.new(5, 5)
    @control = NasaRover::Control.new
    @current_rover = NasaRover::Rover.new(@plateau, 1, 2, 'N')
    commands = 'LMLMLMLMM'
    commands.chars.each do |command|
      @current_rover.position = @control.execute!(
        command,
        @current_rover.position.clone
      )
    end
    expect(@current_rover.position.to_text).to eq('1 3 N')
  end
  it 'passes second test case (3 3 E)' do
    @plateau = NasaRover::Plateau.new(5, 5)
    @control = NasaRover::Control.new
    @current_rover = NasaRover::Rover.new(@plateau, 3, 3, 'E')
    commands = 'MMRMMRMRRM'
    commands.chars.each do |command|
      @current_rover.position = @control.execute!(
        command,
        @current_rover.position.clone
      )
    end
    expect(@current_rover.position.to_text).to eq('5 1 E')
  end
end
