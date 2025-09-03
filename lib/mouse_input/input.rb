# frozen_string_literal: true

# Mouse Input for terminal
module MouseInput
  # Mouse reader and parser
  module Mouse
    # listen input from mouse
    # returns the coords X and Y
    # @return [Array(x,y)]
    def self.read_input
      while (char = $stdin.getc)
        break if char == "\e"
      end
      parse_input(char)
    end

    # reads whole input sequence and returns the coords X and Y
    # @param char [Char]
    # @return [Array(x,y)]
    def self.parse_input(char)
      sequence = char + $stdin.read(17)
      # storing anything left out here
      sequence += $stdin.getc while $stdin.ready?
      input = sequence.split(";")
      x = input[1].to_i
      # for y the to_i will only take the first number from e.g "34M[0;12;0"
      # ignoring everything after the first non Integer
      y = input[2].to_i
      [x, y]
    end
  end
end
