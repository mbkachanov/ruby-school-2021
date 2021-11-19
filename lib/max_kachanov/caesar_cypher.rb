module MaxKachanov
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string
      @shift = shift
    end

    def encrypt
      input_string
    end
  end
end
