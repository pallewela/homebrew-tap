class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.7"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.7/rusta-v1.3.7-aarch64-apple-darwin.tar.gz"
  sha256 "16013bef47fddb502a1e17f03907512bd888836525073d36d3426e599f9df3ce"
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
