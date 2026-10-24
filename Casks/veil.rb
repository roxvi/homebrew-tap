cask "veil" do
  version "0.2.1"
  sha256 "bf2a7fa8fd7d656eaae8e9b55112607752658bf5faed067d62b951aada518ff2"

  url "https://github.com/roxvihaan/Veil/releases/download/v#{version}/Veil-#{version}-arm64.dmg"
  name "Veil Terminal"
  desc "Terminal with transparency, native blur, split panes and color ASCII art"
  homepage "https://github.com/roxvihaan/Veil"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Veil Terminal.app"
  binary "#{appdir}/Veil Terminal.app/Contents/Resources/bin/veil"

  caveats <<~EOS
    Veil is ad-hoc signed, not Apple-notarized. macOS may block its first launch.
    Only if you trust the source, follow Apple's per-app approval instructions:
      https://support.apple.com/en-us/102445
    This cask does not disable Gatekeeper or remove quarantine.
    Save your terminal work and quit Veil before upgrading or uninstalling.
  EOS
end
