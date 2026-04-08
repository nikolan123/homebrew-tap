cask "widget-porting-toolkit" do
  version :latest
  sha256 :no_check

  url "https://github.com/nikolan123/WidgetPortingToolkit/releases/download/nightly/Widget.Porting.Toolkit.zip"
  name "Widget Porting Toolkit"
  desc "Run OS X Dashboard Widgets on modern macOS natively."
  homepage "https://wdgt.niko.rocks"

  depends_on macos: ">= :monterey"
  
  app "Widget Porting Toolkit.app"

  zap trash: [
      "~/Library/Application Support/com.niko.WidgetPortingAPP",
      "~/Library/Preferences/com.niko.WidgetPortingAPP.plist",
    ]
end
