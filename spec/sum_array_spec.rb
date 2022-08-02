require_relative '../part1/sum_array'
require 'pry'

RSpec.describe MyArray do

  subject { described_class.new([1, 2, 3]) }

  describe '#sum' do
    context 'block is not given' do
      context 'initial value is not given' do
        it 'returns sum' do
          expect(subject.sum).to eq(6)
        end
      end

      context 'inital_value is given' do
        it "returns sum" do
          expect(subject.sum(10)).to eq(16)
        end
      end
    end

    context 'block is given' do
      context 'initial value does not given' do
        it 'returns sum' do
          expect(subject.sum() { |n| n**2 } ).to eq(14)
        end
      end
    end
  end
end
