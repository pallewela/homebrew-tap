class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.14"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.14/rusta-v1.0.14-aarch64-apple-darwin.tar.gz"
  sha256 "a1f1c3cea2dbecf8f54397cd3aa4b755a7ca3b92c349da12cd9399c4d2d1a2b8"
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
