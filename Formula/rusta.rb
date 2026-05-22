class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.2"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.2/rusta-v1.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "2b58e6f39e54186bbbb3df80aae07f74025867e6852365ee1765e389eea8d7fe"
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
