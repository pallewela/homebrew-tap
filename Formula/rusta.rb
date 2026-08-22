class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.13"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.13/rusta-v1.3.13-aarch64-apple-darwin.tar.gz"
  sha256 "5d74901fffdf14ab5608db880574f30c4bd3c38de93a7b0c081efbbe5cc31167"
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
