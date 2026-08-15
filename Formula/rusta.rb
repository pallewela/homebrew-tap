class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.10"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.10/rusta-v1.3.10-aarch64-apple-darwin.tar.gz"
  sha256 "50e7e2a361365c3fd97ff9c14e8fd2f7c9608dd6b6b1dd3e2f35eb677e6ce92d"
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
