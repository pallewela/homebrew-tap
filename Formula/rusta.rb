class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.1"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.1/rusta-v1.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "e11b83913465e4278709ec9bcdb9e211c7245a1cec5ace848e869e85f271c219"
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
