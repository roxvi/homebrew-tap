cask "archaive" do
  version "1.0"
  sha256 "a3e19c999e4ecd092ba49f8588dda6773d00c527cf7f50c37f16c54048dda738"

  url "https://github.com/roxvi/summrs/releases/download/v#{version}/Archaive-#{version}-arm64.zip"
  name "Archaive"
  desc "Menu bar keep-awake control, lid dimming, and hotspot fallback"
  homepage "https://github.com/roxvi/summrs"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Archaive.app"

  caveats <<~EOS
    Archaive is ad-hoc signed, not Apple-notarized. macOS may block its first launch.
    If you trust the source, follow Apple's per-app approval instructions:
      https://support.apple.com/en-us/102445
    Quit Archaive before upgrading or uninstalling to restore sleep and brightness.
    Optional password-free access persists after uninstall. Remove it from
    Archaive's menu first if you no longer want that permission.
  EOS
end
