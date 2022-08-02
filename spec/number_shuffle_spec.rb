require 'rspec'
require_relative '../part1/number_shuffle'

RSpec.describe 'number_shuffle' do
  let(:number) { 123 }
  let(:array) { [123, 132, 213, 231, 312, 321] }

  it "returns array" do
    expect(number_shuffle(number)).to eq(array)
  end
end
