cask "solo" do
  version "0.2.0"
  sha256 "be663c79d3b6924e907a728a4ddfe7f43525c4dc5ab5c6b1717f0d508f466a55"

  url "https://github.com/yaowang908/solo-macos/releases/download/v#{version}/Solo-v#{version}.zip"
  name "Solo"
  desc "Menu bar utility to hide other apps and restore minimized windows"
  homepage "https://github.com/yaowang908/solo-macos"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Solo.app"

  caveats <<~EOS
    Solo is not signed or notarized. If macOS blocks the first launch, either
    install with --no-quarantine or clear the quarantine flag:
      xattr -cr /Applications/Solo.app
  EOS
end
