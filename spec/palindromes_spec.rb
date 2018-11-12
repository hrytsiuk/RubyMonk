require_relative '../part1/palindromes'

RSpec.describe 'palindrome?' do
  context 'string is palindrome' do
    let(:sentence) { 'Never odd or even' }
    it 'returns true' do
      expect(palindrome?(sentence)).to eq true
    end
  end

  context 'string is not palindrome' do
    let(:sentence) { 'Yreka Bakey' }
    it 'returns true' do
      expect(palindrome?(sentence)).to eq false
    end
  end
end
