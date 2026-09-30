cask "local-excalidraw" do
  version "0.1.2"
  sha256 "f91c4a57311c8eacb333c2c3b3202d45c8da46437be37a03d88cacfd92d4d72d"

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
