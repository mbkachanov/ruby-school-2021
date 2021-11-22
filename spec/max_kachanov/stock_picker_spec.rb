require 'max_kachanov/stock_picker'

RSpec.describe MaxKachanov::StockPicker do
  subject { described_class.new(prices: prices) }

  describe '#encrypt' do
    let(:prices) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

    context 'if prices are not specified' do
      let(:prices) { nil }

      it 'returns empty array' do
        expect(subject.pick).to eq([])
      end
    end

    context 'if prices are specified' do
      it 'returns optimal buy/sell prices' do
        expect(subject.pick).to eq([1, 4])
      end
    end
  end
end
