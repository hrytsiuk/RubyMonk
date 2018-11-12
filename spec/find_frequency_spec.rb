require 'rspec'
require_relative '../part1/find_frequency'

RSpec.describe 'find frequency' do
  let(:sentence) { 'Do or do not' }
  let(:word) { 'Do' }

  context 'sentence contains the same words' do
    it 'returns count frequency' do
      expect(find_frequency(sentence, word)).to eq(2)
    end
  end

  context 'sentence does not contains the same words' do
    let(:word) { 'Ruby' }
    
    it 'returns 0' do
      expect(find_frequency(sentence, word)).to eq(0)
    end
  end
end
