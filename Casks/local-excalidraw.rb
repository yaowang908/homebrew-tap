cask "local-excalidraw" do
  version "0.1.3"
  sha256 "3e8cc38fd7cd157d94e85f1f4b18ece58a45e6514be5df9b3936a3687a12b95b"

  url "https://github.com/yaowang908/local-excalidraw/releases/download/v#{version}/Local-Excalidraw-v#{version}.zip"
  name "Local Excalidraw"
  desc "A local workspace for Excalidraw drawings"
  homepage "https://github.com/yaowang908/local-excalidraw"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Local Excalidraw.app"

  caveats <<~EOS
    Local Excalidraw is ad-hoc signed but not notarized. macOS may block the
    first launch. If you trust this download, open it once, then choose
    Open Anyway in System Settings > Privacy & Security. See Apple's guidance:
    https://support.apple.com/en-gb/102445
  EOS
end
