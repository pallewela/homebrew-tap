class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.17"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.17/rusta-v1.3.17-aarch64-apple-darwin.tar.gz"
  sha256 "6a468016ac0a0cb7df806fada7b4e3fbdae0012207ff91686a69ba115fbad12a"
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
