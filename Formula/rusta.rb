class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.12"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.12/rusta-v1.0.12-aarch64-apple-darwin.tar.gz"
  sha256 "557902e32392b2cabc9896c70f8c028cf4e76f6985c65ec8768b236a9d349fd5"
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
