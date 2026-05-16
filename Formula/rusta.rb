class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.21"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.21/rusta-v1.0.21-aarch64-apple-darwin.tar.gz"
  sha256 "517ed91df86f5031582f219eeb6baf4b2d17a357bcd4409f9455aa2bbb0177c6"
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
