# frozen_string_literal: true

# Mouse Input for terminal
module MouseInput
  # Terminal settings
  module Terminal
    # setup terminal for reading input
    def self.setup
      system("stty -icanon -echo") # Disable canonical mode and echo in terminal
      enable_mouse_tracking
    end

    # enable the mouse tracking using control sequences -
    # https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h2-Mouse-Tracking
    def self.enable_mouse_tracking
      print "\e[?1000h" # Enable normal mouse tracking
      print "\e[?1006h" # Enable SGR mouse tracking
    end

    # undo the setup for reading input
    def self.restore
      disable_mouse_tracking
      system("stty icanon echo") # Restore terminal to sane mode
    end

    # disable the mouse tracking using control sequences -
    # https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h2-Mouse-Tracking
    def self.disable_mouse_tracking
      print "\e[?1006l" # Disable SGR mouse tracking
      print "\e[?1000l" # Disable normal mouse tracking
    end
  end
end
