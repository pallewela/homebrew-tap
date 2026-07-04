class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.2"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.2/rusta-v1.3.2-aarch64-apple-darwin.tar.gz"
  sha256 "959e25e625f91d787c97685d10873a383dafbeac1e4737c9c6b56dc3289e1a3b"
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
