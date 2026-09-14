class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v1.1.1/MangoDisk-1.1.1-macos-cli.tar.gz"
  sha256 "1b9dfe0a3c23c42c17aa8d2216a61cb8ffa11e4d4d78be177fae024e9fd7f273"
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
