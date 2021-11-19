require 'max_kachanov/caesar_cypher'

RSpec.describe MaxKachanov::CaesarCypher do
  subject { described_class.new(input_string: input_string, shift: shift) }

  describe '#encrypt' do
    context 'if shift is not specified' do
      let(:input_string) { 'Hello!' }
      let(:shift) { nil }

      it 'returns initial input_string' do
        expect(subject.encrypt).to eq(input_string)
      end
    end
  end
end
