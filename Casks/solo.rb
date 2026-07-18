cask "solo" do
  version "0.1.0"
  sha256 "f962d49af3300457b391da307791f52f20a91f4bc40b3fdeb9117a81141df6ea"

  url "https://github.com/yaowang908/solo-macos/releases/download/v#{version}/Solo-v#{version}.zip"
  name "Solo"
  desc "Menu bar utility to hide other apps and restore minimized windows"
  homepage "https://github.com/yaowang908/solo-macos"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Solo.app"

  caveats <<~EOS
    Solo is not signed or notarized. If macOS blocks the first launch, either
    install with --no-quarantine or clear the quarantine flag:
      xattr -cr /Applications/Solo.app
  EOS
end
