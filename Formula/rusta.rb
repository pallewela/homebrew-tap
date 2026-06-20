class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.7"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.7/rusta-v1.2.7-aarch64-apple-darwin.tar.gz"
  sha256 "231344bffe3c786a3915272d06b566cfe87ba672d34672ef974f9f272e25d646"
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
