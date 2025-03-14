# zenv - ZSH Environment Manager

A lightweight and modular ZSH configuration manager that makes it easy to organize and maintain your ZSH setup.

## Features

- Modular plugin system
- Custom completion support
- Easy installation
- Organized configuration structure

## Installation

1. Clone the repository:
```zsh
git clone https://github.com/mmelnyk/zenv.git ~/.zenv
```

2. Run the installation script:
```zsh
cd ~/.zenv
./install.zsh
```

3. Restart your terminal or reload ZSH configuration:
```zsh
source ~/.zshrc
```

## Structure

```
zenv/
├── completions/     # Custom completion scripts
├── plugins/         # Plugin directories
├── install.zsh      # Installation script
├── zshrc           # Main configuration file
└── functions       # Helper functions
```

## Usage

After installation, zenv will automatically load:
- All plugins in the `plugins/` directory
- All completion scripts in the `completions/` directory
- Custom functions and configurations

## Customization

To add custom plugins or completions, place them in the respective directories:
- Plugins: `~/.zenv/plugins/`
- Completions: `~/.zenv/completions/`

## Uninstalling

To uninstall, remove the zenv source line from your `~/.zshrc` file and delete the zenv directory.

## License

MIT License
