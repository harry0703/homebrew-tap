class MangodiskCli < Formula
  desc "Safety-first disk cleanup command-line tool"
  homepage "https://mangodisk.app/"
  url "https://github.com/harry0703/MangoDisk/releases/download/v2.1.2/MangoDisk-2.1.2-macos-cli.tar.gz"
  sha256 "696380deafd264cb0673e41606643f8b424fad3e136bbb54bfbc0684619f6772"
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
