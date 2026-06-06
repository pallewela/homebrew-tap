class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.5"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.5/rusta-v1.2.5-aarch64-apple-darwin.tar.gz"
  sha256 "8cb99c9083f3c1970b198478c21a7d12cf43df9b45150eb79e4f533db8bea3da"
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
