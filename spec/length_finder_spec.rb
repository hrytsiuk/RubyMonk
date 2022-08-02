require_relative '../part1/length_finder'
require 'rspec'

RSpec.describe '.length_finder' do
  context 'array contains words' do
    let(:array) { ['Ruby', 'on', 'Rails'] }

    it 'returns array of length' do
      expect(length_finder(array)).to eq([4, 2, 5])
    end
  end

  context 'array contains integer' do
    let(:array) { [23, 56, 8886] }

    it 'returns array of length' do
      expect(length_finder(array)).to eq([2, 2, 4])
    end
  end

  context 'empty array' do
    let(:array) { [] }

    it 'returns empty array' do
      expect(length_finder(array)).to eq([])
    end
  end
end
