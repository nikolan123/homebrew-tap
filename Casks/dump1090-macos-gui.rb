cask "dump1090-macos-gui" do
  version :latest
  sha256 :no_check

  url "https://github.com/nikolan123/Dump1090-macOS-GUI/releases/download/nightly/Dump1090MAC.zip",
      verified: "github.com/nikolan123/Dump1090-macOS-GUI/"
  name "Dump1090 macOS GUI"
  desc "Simple SwiftUI wrapper for Dump1090"
  homepage "https://dump1090.nikolan.net/"

  depends_on macos: ">= :ventura"

  app "Dump1090 macOS GUI.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Dump1090 macOS GUI.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Scripts/com.niko.Dump1090-macOS-GUI",
    "~/Library/Containers/com.niko.Dump1090-macOS-GUI",
  ]
end
