cask "mangodisk" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:          "abcc30a4ebcefd969f7aaa2272c9794867df9f9ea7adbeeb902a2f078cd4e11d",
         intel:        "abcc30a4ebcefd969f7aaa2272c9794867df9f9ea7adbeeb902a2f078cd4e11d",
         arm64_linux:  "f6f2422ed39ef83869e70436ce8c35b6dd7523015665f17735eb98d28688653a",
         x86_64_linux: "f86de72a6955f951d11ddf79a6a54696cc793c575ce2372ab5fa8beb11ef22b2"

  on_macos do
    url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg"

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
  on_linux do
    url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-linux-#{arch}.AppImage"

    app_image "MangoDisk-#{version}-linux-#{arch}.AppImage", target: "MangoDisk.AppImage"
    binary "MangoDisk-#{version}-linux-#{arch}.AppImage", target: "mangodisk"

    caveats "Start MangoDisk from your applications menu or run: mangodisk"
  end

  name "MangoDisk"
  desc "Safety-first disk cleaner and disk space analyzer"
  homepage "https://mangodisk.app/"

  auto_updates true
end
