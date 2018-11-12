require_relative '../part1/restaurant'
require 'pry'

RSpec.describe Restaurant do
  let(:menu) { described_class.new(rice: 5, noodles: 9) }
  let(:orders) { { rice: 2, noodles: 1 } }

  describe '#cost' do
    it 'returns sum' do
      expect(menu.cost(orders)).to eq(19)
    end
  end
end
