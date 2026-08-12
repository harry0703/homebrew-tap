class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v1.0.2/MangoDisk-1.0.2-macos-cli.tar.gz"
  sha256 "95a1563716014b6e52172f9ee8bf2c9e78d9ebb6dd3fc6e86c1e2d10e89aef67"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "mangodisk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mangodisk --version")
    assert_match "clean", shell_output("#{bin}/mangodisk --help")
  end
end
