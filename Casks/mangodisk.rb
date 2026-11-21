cask "mangodisk" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:          "88080eef4df17ac5665d19b45c200d44901a1d4c30996b06b62f798672c5906c",
         intel:        "88080eef4df17ac5665d19b45c200d44901a1d4c30996b06b62f798672c5906c",
         arm64_linux:  "7ffc61c0c2c3d5ce112712fff102ffcfbe5570238e62d1880a2be3f4e2251db7",
         x86_64_linux: "480483dac5a2cc3eb626629e52596d52d0dbdeb0860672b3ad1ae652d0bf6c63"

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
