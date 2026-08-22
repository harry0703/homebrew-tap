class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v1.0.6/MangoDisk-1.0.6-macos-cli.tar.gz"
  sha256 "6ebf7b9adbf712d7b4d58addfead0e74174d94af2101d5de445bb1ca1522cf8a"
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
