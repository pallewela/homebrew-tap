class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.11"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.11/rusta-v1.0.11-aarch64-apple-darwin.tar.gz"
  sha256 "7d630203c21ee642a37618d69dd503e828f43c49a05cb7ae3e8ddcec6304c447"
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
