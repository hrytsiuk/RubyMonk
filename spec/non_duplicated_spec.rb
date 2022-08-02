require 'rspec'
require_relative '../part1/non_duplicated'

RSpec.describe 'non_duplicated_values' do
  context 'duplicate is exist' do
    let(:array) { [1, 2, 2, 3, 3, 4, 5] }

    it 'returns non duplicated array' do
      expect(non_duplicated_values(array)).to eq([1, 4, 5])
    end
  end

  context 'duplicate does not exist' do
    let(:array) { [1, 2, 3] }

    it 'returns array' do
      expect(non_duplicated_values(array)).to eq([1, 2, 3])
    end
  end
end
