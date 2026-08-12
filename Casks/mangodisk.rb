cask "mangodisk" do
  version "1.0.2"
  sha256 "cbc618bfb965ea590d0c14f7588b669b611b9383626c14254242cefe04bdfc77"

  url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg",
      verified: "github.com/harry0703/MangoDisk/"
  name "MangoDisk"
  desc "Safety-first disk cleaner and disk space analyzer"
  homepage "https://mangodisk.app/"

  auto_updates true
  depends_on :macos

  app "MangoDisk.app"

  zap trash: [
    "~/Library/Application Support/app.mangodisk.desktop",
    "~/Library/Caches/app.mangodisk.desktop",
    "~/Library/HTTPStorages/app.mangodisk.desktop",
    "~/Library/Logs/app.mangodisk.desktop",
    "~/Library/Preferences/app.mangodisk.desktop.plist",
    "~/Library/Saved Application State/app.mangodisk.desktop.savedState",
    "~/Library/WebKit/app.mangodisk.desktop",
  ]
end
