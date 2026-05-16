class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.3"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.3/rusta-v1.0.3-aarch64-apple-darwin.tar.gz"
  sha256 "1eb9ed1798ee5a15bc0273cae1b9391f3158d4cfd71d7a908f63a9aa7932d725"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rusta"
  end

  test do
    assert_match "macOS CLI", shell_output("#{bin}/rusta --help")
  end
end
