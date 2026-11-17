class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v2.1.0/MangoDisk-2.1.0-macos-cli.tar.gz"
  sha256 "897f276251f147a136618564ec98877281a89739ab0006503d8352ce51dea112"
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
