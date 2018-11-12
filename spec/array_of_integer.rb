require_relative '../part1/array_of_integer'
require 'pry'

RSpec.describe 'array_of_integer?' do
  context 'empty array' do
    let(:array) { [] }
    it 'returns true' do
      expect(array_of_integer?(array)).to eq true
    end
  end

  context 'all items are integer' do
    let(:array) { [1, 2, 4] }
    it 'returns true' do
      expect(array_of_integer?(array)).to eq true
    end
  end

  context 'items are of different type' do
    let(:array) { [:a, "c", 1] }
    it 'returns false' do
      expect(array_of_integer?(array)).to eq false
    end
  end
end
