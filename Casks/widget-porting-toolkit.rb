cask "widget-porting-toolkit" do
  version :latest
  sha256 :no_check

  url "https://github.com/nikolan123/WidgetPortingToolkit/releases/download/nightly/Widget.Porting.Toolkit.zip",
    verified: "github.com/nikolan123/WidgetPortingToolkit/"
  name "Widget Porting Toolkit"
  desc "Run legacy Dashboard Widgets natively"
  homepage "https://wdgt.niko.rocks/"

  depends_on macos: ">= :monterey"
  
  app "Widget Porting Toolkit.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Widget Porting Toolkit.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.niko.WidgetPortingAPP",
    "~/Library/Preferences/com.niko.WidgetPortingAPP.plist",
  ]
end
