class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v1.2.2/MangoDisk-1.2.2-macos-cli.tar.gz"
  sha256 "c0603a756ab89c13e53ea84f24bf6a6aebdee983f0883f714906ee72d5941fa1"
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
