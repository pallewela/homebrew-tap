class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.7"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.7/rusta-v1.0.7-aarch64-apple-darwin.tar.gz"
  sha256 "7bc28c80e701c11563be3b4869a48f2c879c9a0123e33400dba97872c5d0b882"
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
