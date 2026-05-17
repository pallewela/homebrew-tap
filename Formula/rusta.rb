class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.26"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.26/rusta-v1.0.26-aarch64-apple-darwin.tar.gz"
  sha256 "f1e81ee5f12a5e15fde437b3146197b259d494c46e5b87f3a00ea0e5b7ef0200"
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
