cask "mangodisk" do
  version "1.0.1"
  sha256 "ac2678c6f283c755ae9e92c5ba533050bfbb0591d04e9b00903d83613f223306"

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
