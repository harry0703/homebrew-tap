cask "mangodisk" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:          "7e80fcc53e1ac7e9300690c9bf12522442ebca508afb2a3837939a11be688c88",
         intel:        "7e80fcc53e1ac7e9300690c9bf12522442ebca508afb2a3837939a11be688c88",
         arm64_linux:  "81bded31cde94419d9b9249448aaaf85ad368c77bfe4ae3094c08858242d281f",
         x86_64_linux: "ef6284b4745723df9cd2452053a170414d95beeb882c07ec32837b1e833e1af9"

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
