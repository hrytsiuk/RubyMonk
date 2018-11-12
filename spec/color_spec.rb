require_relative '../part1/color'
require 'pry'

RSpec.describe Color do

  let(:rgb_color) { described_class.new(13, 21, 34) }
  let(:another_color) { described_class.new(55, 89, 144) }
  index = 20

  describe '#brightness_index' do
    it "returns index equal #{index}" do
      expect(rgb_color.brightness_index).to eq(index)
    end
  end

  describe '#brightness_difference' do
    context 'another color is exists' do
      it 'returs value of diference' do
        expect(rgb_color.brightness_difference(another_color)).to eq(65)
      end
    end

    context 'another color does not exist' do
      it 'returns 0' do
        expect(rgb_color.brightness_difference(rgb_color)).to eq(0)
      end
    end
  end

  describe '#hue_difference' do
    context 'another color is exists' do
      it 'returns value of difference' do
        expect(rgb_color.hue_difference(another_color)).to eq(220)
      end
    end
  end

  describe '#enough_contrast?' do
    context 'is enough contrast' do
    let(:rgb_color) { described_class.new(42, 42, 42) }
    let(:another_color) { described_class.new(210, 210, 210) }

      it 'return true' do
        expect(rgb_color.enough_contrast?(another_color)).to eq(true)
      end
    end

    context 'does not enough contrast' do
      it 'return false' do
        expect(rgb_color.enough_contrast?(another_color)).to eq(false)
      end
    end
  end
end
