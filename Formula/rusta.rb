class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.1"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.1/rusta-v1.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "2474c5adcacc255ac486e2cb493b5449b11e118b5625ba42efb7353e53c5d33e"
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
