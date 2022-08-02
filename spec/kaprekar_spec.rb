require_relative '../part1/kaprekar'
require 'pry'

RSpec.describe 'kaprekar?' do
  context 'square k with n-digits' do
    context 'add right n digits to the left n digits' do
      context 'resultant sum is k' do
        let(:k) { 9 }

        it 'returns true' do
          expect(kaprekar?(k)).to be true
        end
      end

      context 'resultant sum is not k' do
        let(:k) { 10 }

        it 'returns false' do
          expect(kaprekar?(k)).to be false
        end
      end
    end
  end
end
