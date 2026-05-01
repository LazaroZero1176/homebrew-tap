# Homebrew Tap for Later

This tap installs [Later](https://github.com/LazaroZero1176/later), a macOS menu bar app for saving and restoring app sessions.

## Install

```bash
brew tap LazaroZero1176/tap
brew install --cask later
```

Because the current release is ad-hoc signed, macOS Gatekeeper may block the first launch. If macOS reports that `Later.app` is damaged, remove the quarantine attribute:

```bash
xattr -dr com.apple.quarantine /Applications/Later.app
```

## Update the Cask

When a new Later release is published:

1. Update `version` in `Casks/later.rb`.
2. Download the matching release DMG and update `sha256`.
3. Run:

```bash
brew audit --cask --online Casks/later.rb
brew style Casks/later.rb
```
