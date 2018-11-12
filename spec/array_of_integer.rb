require_relative '../part1/array_of_integer'
require 'pry'

RSpec.describe 'array_of_integer?' do
  subject { [] }

  context 'empty array' do
    it 'returns true' do
      expect(array_of_integer?(subject)).to eq true
    end
  end

  context 'all items are integer' do
    before { subject.push(1,2,4) }
    it 'returns true' do
      expect(array_of_integer?(subject)).to eq true
    end
  end

  context 'items are of different type' do
    before { subject.push(:a, "c", 1) }
    it 'returns false' do
      expect(array_of_integer?(subject)).to eq false
    end
  end
end
