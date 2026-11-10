cask "opennexus" do
  version "0.1.0"
  sha256 "4de467c8409cd15c9e0d92084004983b4a73fb7c8e3bfbb36ee66994a537ae1c"

  url "https://github.com/roxvi/homebrew-tap/releases/download/opennexus-v#{version}/OpenNexus-#{version}-arm64.dmg"
  name "OpenNexus"
  desc "Native system monitoring and hardware dashboard"
  homepage "https://github.com/roxvi/homebrew-tap#opennexus"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "OpenNexus.app"

  caveats <<~EOS
    OpenNexus is ad-hoc signed, not Apple-notarized. macOS may block its first launch.
    If you trust the source, follow Apple's per-app approval instructions:
      https://support.apple.com/en-us/102445
    Quit OpenNexus before upgrading. Uninstalling preserves your settings and layouts.
  EOS
end
