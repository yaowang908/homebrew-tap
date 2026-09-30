cask "local-excalidraw" do
  version "0.1.0"
  sha256 "48d799dd44f9a769c142d52446d9337df86ff86c9af94a696c8ec250d2e7a2cb"

  url "https://github.com/yaowang908/local-excalidraw/releases/download/v#{version}/Local-Excalidraw-v#{version}.zip"
  name "Local Excalidraw"
  desc "A local workspace for Excalidraw drawings"
  homepage "https://github.com/yaowang908/local-excalidraw"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Local Excalidraw.app"

  caveats <<~EOS
    Local Excalidraw is not signed or notarized. Install with --no-quarantine
    to allow the first launch:
      brew install --cask --no-quarantine yaowang908/tap/local-excalidraw
  EOS
end
