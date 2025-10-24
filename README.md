# SNOW Linux Homebrew Tap

This is a _staging area_ to test Linux casks builds of things we want. It is intended to show that homebrew casks on linux work great. This repository's metric of success is when the applications in here are deleted. This also ships artwork and OEM tools that are better managed in userspace than on an image.

## This is useful for

IDEs like Jetbrains and VSCode. They don't run well out of flatpaks so we put them on their own images. This lets the user also opt-into vscode instead of having it on the base image even if you don't use it.

```shell
brew tap linuxsnow/tap
brew install --cask visual-studio-code-linux
brew install --cask vscodium-linux
brew install --cask jetbrains-toolbox-linux
brew install --cask lm-studio-linux
brew install --cask 1password-gui-linux
brew install --cask framework-tool

brew install --cask bluefin-wallpapers
brew install --cask bluefin-wallpapers-extra
brew install --cask aurora-wallpapers
brew install --cask bazzite-wallpapers
brew install --cask framework-wallpapers
```

## Includes

- 1Password - Password manager
- JetBrains Toolbox - JetBrains tools manager
- LM Studio - Local LLM discovery, download, and runtime
- Visual Studio Code - Microsoft's code editor
- VSCodium - Open-source build of VS Code
- Framework System Tool - Hardware management for Framework laptops

### Wallpapers

Metadata for GNOME is usually there.


- Bluefin Wallpapers - Wallpapers for Bluefin
- Bluefin Extra Wallpapers - Additional wallpapers for Bluefin
- Aurora Wallpapers - Art made for Aurora
- Bazzite Wallpapers - Wallpapers made for Bazzite
- Framework Wallpapers

## Scope

- IDEs and other apps that aren't flatpak friendly
- Command line tools for OEMs, framework, etc. so that we don't need to bake them into images

## Out of Scope

- Browsers
- GUI apps, every effort to use flatpak should be exhausted, or are out of our control (eg. vscode)
- General requests for common apps. We don't expect users to use this repo directly, the packages are there for us to automate in the background, ideall they never know this tap exists.

## Forked from UBlue
[Original](https://github.com/ublue-os/homebrew-tap)