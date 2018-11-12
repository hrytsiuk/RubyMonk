require_relative '../part1/sort_string'
require 'pry'

RSpec.describe 'sort_string' do
  context 'string is exsists' do
    let(:string) { "Sort the words in a given sentence" }

    it 'returns sorted sring' do
      expect(sort_string(string)).to eq("a in the Sort words given sentence")
    end
  end
end
