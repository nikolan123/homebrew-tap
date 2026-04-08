# Niko's Tap

## Installation

Tap the repository and install the cask you want:

```bash
brew tap nikolan123/tap
brew install --cask widget-porting-toolkit
```

Or, install a cask directly with the full path:

```bash
brew install --cask nikolan123/tap/widget-porting-toolkit
```

## Available Casks

| Name | Description |
| :--- | :--- |
| [**Dump1090 macOS GUI**](https://github.com/nikolan123/Dump1090-macOS-GUI) | SwiftUI wrapper for Dump1090. |
| [**Widget Porting Toolkit**](https://github.com/nikolan123/WidgetPortingToolkit) | Run OS X Dashboard widgets natively on modern macOS. |

## Security & Quarantine

Since I do not have a developer license, macOS applies a difficult to remove Quarantine flag. The Casks in this tap include a `postflight` script that attempts to clear quarantine automatically. If you need to do it manually:

```bash
xattr -rd com.apple.quarantine "/Applications/Dump1090 macOS GUI.app"
```

*If you still see a security warning, open System Settings, go to Privacy & Security, scroll to the bottom, and select **Open Anyways** to bypass Gatekeeper.*

## Updates

These apps use the `:latest` versioning scheme, so Homebrew won't detect or install updates automatically. To force Homebrew to pull the absolute newest bits from the nightly release, use:

```bash
brew upgrade --cask --greedy --force <cask-name>
```

or reinstall:

```bash
brew reinstall <cask-name>
```

## Uninstallation

To completely remove an app along with its settings, caches, and container data:

```bash
brew uninstall --zap --cask <cask-name>
```

## Homebrew Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
