class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.8"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.8/rusta-v1.3.8-aarch64-apple-darwin.tar.gz"
  sha256 "d684911e920da7a1c01c1a0b87b82b4e6987855f2ebd245995b1cc6a979bc74d"
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
