module MaxKachanov
  class BubbleSort
    attr_reader :input_array, :sorted

    def initialize(input_array: [])
      @input_array = input_array.to_a
    end

    def perform
      stop_at_index = input_array.length - 2

      while stop_at_index > 0 do
        0.upto(stop_at_index) do |current_index|
          if input_array[current_index] > input_array[current_index + 1]
            input_array[current_index], input_array[current_index + 1] = input_array[current_index + 1], input_array[current_index]
          end
        end

        stop_at_index -= 1
      end

      input_array
    end
  end
end
