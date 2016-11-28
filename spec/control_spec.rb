require 'spec_helper'

describe NasaRover::Control do
  describe 'Success' do
    before(:each) do
      @control = NasaRover::Control.new
      @current_position = NasaRover::Position.new(1, 2, 'N')
    end
    it 'rotates the rover left' do
      @control.execute!('L', @current_position)
      expect(@current_position.orientation).to eq('W')

      @control.execute!('L', @current_position)
      expect(@current_position.orientation).to eq('S')

      @control.execute!('L', @current_position)
      expect(@current_position.orientation).to eq('E')

      @control.execute!('L', @current_position)
      expect(@current_position.orientation).to eq('N')
    end
    it 'rotates the rover right' do
      @control.execute!('R', @current_position)
      expect(@current_position.orientation).to eq('E')

      @control.execute!('R', @current_position)
      expect(@current_position.orientation).to eq('S')

      @control.execute!('R', @current_position)
      expect(@current_position.orientation).to eq('W')

      @control.execute!('R', @current_position)
      expect(@current_position.orientation).to eq('N')
    end
    it 'moves the rover forward' do
      @control.execute!('M', @current_position)
      expect(@current_position.to_text).to eq('1 3 N')
    end
  end
  describe 'Failure' do
    it 'raises Direction Not Valid' do
      @control = NasaRover::Control.new
      @current_position = NasaRover::Position.new(1, 2, 'F')
      expect do
        @control.execute!('L', @current_position)
      end.to raise_error(RuntimeError, 'Direction Not Valid')
    end
  end
end
