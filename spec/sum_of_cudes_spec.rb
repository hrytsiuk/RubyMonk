require 'rspec'
require_relative '../part1/sum_of_cubes'

RSpec.describe 'sum_of_cubes' do
  let(:a) { 1 }
  let(:b) { 3 }

  context 'range is given' do
    it 'returns sum' do
      expect(sum_of_cubes(a, b)).to eq(36)
    end
  end
end
