# frozen_string_literal: true

# for using $stdin.ready? you must require io/wait
# docs: https://docs.ruby-lang.org/en/3.4/IO.html#method-i-ready-3F
require "io/wait"
require_relative "mouse_input/terminal"
require_relative "mouse_input/input"
require_relative "mouse_input/version"

# Mouse Input for terminal
module MouseInput
  # read mouse input and
  # returns the coords X and Y
  # @return [Array(x,y)]
  def self.read
    begin
      Terminal.setup
      coords = Mouse.read_input
    ensure
      Terminal.restore
    end
    coords
  end
end
