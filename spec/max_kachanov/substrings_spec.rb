require 'max_kachanov/substrings'

RSpec.describe MaxKachanov::Substrings do
  subject { described_class.new(text: text, dictionary: dictionary) }

  describe '#analyze' do
    let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }

    context 'when provided text contains just a single word' do
      let(:text) { 'below' }

      it 'shows how many times each word from dictionary is found in the provided text' do
        expect(subject.analyze).to eq({ 'below' => 1, 'low' => 1 })
      end
    end

    context 'when provided text contains multiple words' do
      let(:text) { "Howdy partner, sit down! How's it going?" }

      it 'shows how many times each word from dictionary is found in the provided text' do
        expect(subject.analyze).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 })
      end
    end
  end
end
