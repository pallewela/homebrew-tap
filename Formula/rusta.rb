class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.18"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.18/rusta-v1.0.18-aarch64-apple-darwin.tar.gz"
  sha256 "7b631e22abb148aef4b77424d415c7ad85af146c74ea8a2a54e182bcc0e18200"
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
