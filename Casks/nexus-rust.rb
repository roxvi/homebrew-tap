cask "nexus-rust" do
  version "0.2.1"
  sha256 "40b1582ec56dff20a4f90e9e159879fafeb55bfa3e84e7a508bd58806e93d45e"

  url "https://github.com/roxvi/homebrew-tap/releases/download/nexus-rust-v#{version}/NexusRust-#{version}-arm64.dmg"
  name "Nexus Rust"
  desc "Native system monitoring and hardware dashboard"
  homepage "https://github.com/roxvi/homebrew-tap#nexus-rust"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Nexus Rust.app"

  caveats <<~EOS
    Nexus Rust is ad-hoc signed, not Apple-notarized. macOS may block its first launch.
    If you trust the source, follow Apple's per-app approval instructions:
      https://support.apple.com/en-us/102445
    Quit Nexus Rust before upgrading. Uninstalling preserves your settings and layouts.
  EOS
end
