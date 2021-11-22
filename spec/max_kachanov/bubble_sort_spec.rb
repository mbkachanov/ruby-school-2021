require 'max_kachanov/bubble_sort'

RSpec.describe MaxKachanov::BubbleSort do
  subject { described_class.new(input_array: input_array) }

  describe '#perform' do
    let(:input_array) { nil }

    context 'if input_array is not specified' do
      let(:input_array) { nil }

      it 'returns empty array' do
        expect(subject.perform).to eq([])
      end
    end

    context 'if input_array is specified' do
      let(:input_array) { [4, 3, 78, 2, 0, 2] }

      it 'returns performs input_array properly' do
        expect(subject.perform).to eq([0, 2, 2, 3, 4, 78])
      end
    end
  end
end
