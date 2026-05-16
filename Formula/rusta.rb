class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.6"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.6/rusta-v1.0.6-aarch64-apple-darwin.tar.gz"
  sha256 "00b4c2c95f5a94eb6f1e3a0f909abb1eef8bd28cba223126f9dfb16d740aa874"
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
