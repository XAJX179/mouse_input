# MouseInput

[![Documentation](https://github.com/XAJX179/mouse_input/actions/workflows/documentation.yml/badge.svg)](https://github.com/XAJX179/mouse_input/actions/workflows/documentation.yml)
[![Rubocop](https://github.com/XAJX179/mouse_input/actions/workflows/rubocop.yml/badge.svg)](https://github.com/XAJX179/mouse_input/actions/workflows/rubocop.yml)
[![Ruby Test](https://github.com/XAJX179/mouse_input/actions/workflows/tests.yml/badge.svg)](https://github.com/XAJX179/mouse_input/actions/workflows/tests.yml)

get mouse click input inside terminal.

<https://github.com/user-attachments/assets/3268a720-9b85-4cf3-9b98-6c88e26055f3>

> [!NOTE]
> supported in most - Xfce Terminal, GNOME Terminal, Konsole, Alacritty,
> Kitty, ITerm2, etc
>
> requirement is support for SGR mode(CSI?1006h)

> [!IMPORTANT]
> tmux users must `:set mouse on` to enable mouse mode

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add mouse_input
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install mouse_input
```

## Test it

after installing the gem -
run `mouse_input` in your terminal and click anywhere in terminal
```bash
mouse_input
```
if you see X and Y coordinates printed correctly it works


## Usage

```rb
require 'mouse_input'
coords = MouseInput.Read # listens for mouse click and returns X and Y coords.
pp coords # will print X and Y coords
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/XAJX179/mouse_input. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/XAJX179/mouse_input/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MouseInput project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/XAJX179/mouse_input/blob/main/CODE_OF_CONDUCT.md).
