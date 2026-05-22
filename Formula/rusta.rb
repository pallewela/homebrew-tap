class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.29"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.29/rusta-v1.0.29-aarch64-apple-darwin.tar.gz"
  sha256 "fd1c0f06ac23316725032d3d89bc8584251b8a625e89e437bea9a55ab91e0c03"
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
