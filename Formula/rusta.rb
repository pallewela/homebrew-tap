class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "0.1.0"
  url "https://github.com/pallewela/rusta/releases/download/v0.1.0/rusta-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
