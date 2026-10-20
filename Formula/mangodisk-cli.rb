class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v1.2.0/MangoDisk-1.2.0-macos-cli.tar.gz"
  sha256 "b0d066416544d3c158bb746fa91a57d2bb63986a23de7a10e747c7bea59fbbf2"
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
