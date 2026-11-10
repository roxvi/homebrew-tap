# roxvihaan's Homebrew tap

## Veil Terminal

```sh
brew install --cask roxvihaan/tap/veil
```

Installs [Veil Terminal](https://github.com/roxvihaan/Veil), a macOS terminal with real transparency, native blur, configurable colors, tabs, splits and color ASCII images/GIFs. The `veil` command is also linked into Homebrew's bin directory.

The current download is Apple Silicon only and targets macOS 12 or newer (tested on macOS 26.5.1). This is the maintainer's personal tap, not the main Homebrew catalog. Homebrew may ask for trust confirmation; trust only this cask if you don't need other packages from this tap.

**Signing:** Veil is ad-hoc signed, not Apple-notarized. macOS may require per-app approval after the first launch attempt. Only if you trust the source, follow [Apple's instructions](https://support.apple.com/en-us/102445). The cask retains quarantine and never disables Gatekeeper.

Save your terminal work and quit Veil before updating:

```sh
brew update
brew upgrade --cask roxvihaan/tap/veil
```

Uninstall with `brew uninstall --cask roxvihaan/tap/veil`. Your Veil config is preserved. This cask does not install the optional Neofetch wrapper or modify shell startup files.

## Archaive

```sh
brew install --cask roxvi/tap/archaive
```

The release repository and DMG are public. No GitHub login or token is required.

Installs [Archaive](https://github.com/roxvi/arachive), a menu bar app with a keep-awake shortcut, lid-triggered brightness dimming, and hotspot fallback. Requires Apple Silicon and macOS 13 or later. You can also download the DMG from [Releases](https://github.com/roxvi/arachive/releases) and drag Archaive onto Applications.

The app includes optional one-time administrator setup for password-free keep-awake toggles. Custom hotspot passwords are stored in Keychain. The build is ad-hoc signed, not notarized; the cask retains quarantine and does not disable Gatekeeper.

Quit Archaive before upgrading or uninstalling so it can restore sleep and brightness. If you enabled password-free access and no longer want it, remove it from Archaive's menu before uninstalling. Uninstalling the cask preserves preferences, Keychain entries, and that optional permission.

```sh
brew upgrade --cask roxvi/tap/archaive
brew uninstall --cask roxvi/tap/archaive
```

## Nexus Rust

```sh
brew trust --cask roxvi/tap/nexus-rust
brew install --cask roxvi/tap/nexus-rust
```

Nexus Rust (previously OpenNexus) is a native Rust system-monitoring and hardware dashboard with live CPU/memory/process views, display layouts, local profiles, weather, world clocks and an image gallery. The app includes native case previews with catalogue search, measured panels and cut-outs, rotate/pan/zoom controls, three offline HYTE cases and saved selections. Cases without detailed geometry have a labelled dimensions-only outline. Requires Apple Silicon and macOS 12 or newer; tested on macOS 26.5.1. Original device drivers, fan writes, firmware and hosted cloud features are not implemented.

Version 0.2.1 adds used / total RAM in GB, upstream-style Monitoring history and process details, the shared darker window shade, corrected sidebar selection and rounded animation previews. History is retained in memory for the current run: 30-minute aggregates and five-minute process frames.

The DMG is public and requires no GitHub login. [Download Nexus Rust 0.2.1](https://github.com/roxvi/homebrew-tap/releases/tag/nexus-rust-v0.2.1) and drag the app onto Applications, or use the cask above. The source repository remains private.

The app is ad-hoc signed, not Apple-notarized. The cask retains quarantine and does not disable Gatekeeper. If macOS blocks first launch and you trust this app, follow [Apple's per-app approval instructions](https://support.apple.com/en-us/102445).

Quit OpenNexus/Nexus Rust before upgrading or uninstalling. The old `opennexus` cask token redirects to `nexus-rust` through Homebrew's cask rename mapping. Settings, local profiles and display layouts keep their existing local directory and are preserved on uninstall.

```sh
brew update
brew upgrade --cask roxvi/tap/nexus-rust
brew uninstall --cask roxvi/tap/nexus-rust
```
