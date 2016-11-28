require 'spec_helper'

describe NasaRover::Position do
  it 'should return a string output of the position' do
    expect(NasaRover::Position.new(1, 2, 'N').to_text).to eq('1 2 N')
  end
end
