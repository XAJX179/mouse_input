# frozen_string_literal: true

require_relative "lib/mouse_input/version"

Gem::Specification.new do |spec|
  spec.name = "mouse_input"
  spec.version = MouseInput::VERSION
  spec.authors = ["X_AJ_X"]
  spec.email = ["xajx179@gmail.com"]

  spec.summary = "read mouse clicks for terminal!"
  spec.description = "Mouse click input listener ,
    requirement: any modern terminal.(supported in most -
    Xfce Terminal, GNOME Terminal, Konsole, Alacritty, Kitty, ITerm2, etc)"
  spec.homepage = "https://xajx179.github.io/mouse_input"
  spec.license = "MIT"
  spec.extra_rdoc_files = ["README.md"]
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/XAJX179/mouse_input"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*.rb"]
  spec.files += Dir["bin/*"]

  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.post_install_message = "Thanks for installing! by X_AJ_X"

  spec.add_dependency "io-wait", "~> 0.3.2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
