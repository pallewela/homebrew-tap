class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.20"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.20/rusta-v1.0.20-aarch64-apple-darwin.tar.gz"
  sha256 "dde003904ed278ea2a167cd24acd71aaa48e9f5cf4539ed6a61d8b87f8dbc9e4"
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
