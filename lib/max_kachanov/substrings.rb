module MaxKachanov
  class Substrings
    attr_reader :text, :dictionary

    def initialize(text: '', dictionary: [])
      @text = text.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def analyze
      dictionary.each_with_object(Hash.new(0)) do |dictionary_word, word_matches_counts|
        matches_count = text.scan(dictionary_word.downcase).size
        word_matches_counts[dictionary_word] = matches_count if matches_count.positive?
      end
    end
  end
end
