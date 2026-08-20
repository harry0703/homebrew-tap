cask "mangodisk" do
  version "1.0.5"
  sha256 "2d017058af243de17b27e41be95a8f53b4cf0415b772673b78636808a946e93b"

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
