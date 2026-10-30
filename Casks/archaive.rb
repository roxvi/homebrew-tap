cask "archaive" do
  version "1.0"
  sha256 "a3e19c999e4ecd092ba49f8588dda6773d00c527cf7f50c37f16c54048dda738"

  # Private release asset for v1.0; Homebrew defers the token until download time.
  url "https://api.github.com/repos/roxvi/summrs/releases/assets/692624233",
      header: ["Accept: application/octet-stream",
               "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
  name "Archaive"
  desc "Menu bar keep-awake control, lid dimming, and hotspot fallback"
  homepage "https://github.com/roxvi/summrs"

  depends_on arch: :arm64
  depends_on macos: :ventura

  container type: :zip

  app "Archaive.app"

  caveats <<~EOS
    Downloads require HOMEBREW_GITHUB_API_TOKEN with access to roxvi/summrs.
    Archaive is ad-hoc signed, not Apple-notarized. macOS may block its first launch.
    If you trust the source, follow Apple's per-app approval instructions:
      https://support.apple.com/en-us/102445
    Quit Archaive before upgrading or uninstalling to restore sleep and brightness.
    Optional password-free access persists after uninstall. Remove it from
    Archaive's menu first if you no longer want that permission.
  EOS
end
