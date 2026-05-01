# Homebrew Tap for Later

This tap installs [Later](https://github.com/LazaroZero1176/later), a macOS menu bar app for saving and restoring app sessions.

Repository: <https://github.com/LazaroZero1176/homebrew-tap>

## Install

```bash
brew tap LazaroZero1176/tap
brew install --cask later
```

Because the current release is ad-hoc signed, macOS Gatekeeper may block the first launch. The Cask prints this caveat after installation; if macOS reports that `Later.app` is damaged, remove the quarantine attribute:

```bash
xattr -dr com.apple.quarantine /Applications/Later.app
```

## Update the Cask

When a new Later release is published:

1. Wait until the `Later-<version>.dmg` asset is attached to the Later release.
2. Update `version` in `Casks/later.rb`.
3. Download the matching release DMG and update `sha256`.
4. Run:

```bash
brew style Casks/later.rb
brew audit --cask --online later
brew install --cask --dry-run later
```

5. Commit and push the tap update before posting release/install instructions.
