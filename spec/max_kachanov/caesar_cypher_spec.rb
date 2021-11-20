require 'max_kachanov/caesar_cypher'

RSpec.describe MaxKachanov::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift) }

  describe '#encrypt' do
    let(:input_string) { 'aAbBrRzZ 2021!' }

    context 'if shift is not specified' do
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end

    context 'if shift is specified' do
      let(:shift) { 3 }

      it 'returns encrypts input_string properly' do
        expect(subject.encrypt).to eq('dDeEuUcC 2021!')
      end
    end
  end
end
