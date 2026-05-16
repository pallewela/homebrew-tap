class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.19"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.19/rusta-v1.0.19-aarch64-apple-darwin.tar.gz"
  sha256 "109afb474f0593609da4ade06265a695c14cfc122829a6d9c1a6543060600fba"
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
