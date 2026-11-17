cask "mangodisk" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:          "5a0c1c04ca6fe16c031087a0e0bdefb020e34dadc837475434476f84b1f897f8",
         intel:        "5a0c1c04ca6fe16c031087a0e0bdefb020e34dadc837475434476f84b1f897f8",
         arm64_linux:  "c69f445010fffae14f2bf6c43d4b21d1d8314c2662deb6f4c45fb2cbba18248f",
         x86_64_linux: "c3fa5ff4b5cfddea2114b7e063c6177f763e4a06d20a6d9d287c6c9179bd2ba8"

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
