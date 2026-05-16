class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.5"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.5/rusta-v1.0.5-aarch64-apple-darwin.tar.gz"
  sha256 "53b98bab214031862f034e16d040282f3680c30c3ac418e23b76f6f404539af9"
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
